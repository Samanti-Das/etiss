#!/bin/bash
set -e
# Config
ETISS_DIR=/nas/ei/share/TUEIEDAprojects/SystemDesign/work/etiss-ci/etiss_ci/install/


# Clear tmp file
DYN_INI=$(mktemp /tmp/etiss_dynamic_XXXXXXXXXX.ini)
echo "" > $DYN_INI


# Args
if [ "$#" -lt 1 ]; then
    echo -e "Usage: $0 TargetELF [options] [vp VPExecutable]\n" \
        "vp:\n" \
        "  Optional parameter to specify an executable to use as VP. Default is the bare_etiss_processor.\n" \
        "options:\n" \
        "  gdb      Run the VP on a debugger\n" \
        "  tgdb     Run the target SW on a debugger\n" \
        "  noattach Do not automatically attach when using tgdb\n" \
        "  nodmi    Disable DMI\n" \
        "  logpc    Enable logging of the program counter\n" \
        "  v        Set ETISS output to verbose\n" \
        "  trace    Trace memory accesses\n" \
        "  gcc      Use GCC as JIT instead of TCC\n" \
        "  llvm     Use LLVM as JIT instead of TCC\n" \
        "  rv64     Use RISC-V 64-bit instead of RISC-V 32-bit\n"
    exit 1
fi
TARGETSW_PATH_ELF=$1
TARGET_ELFFILE=$(basename -- "$TARGETSW_PATH_ELF")
TARGET_ELFDIR=$(dirname -- "$TARGETSW_PATH_ELF")
echo -e \
  "[StringConfigurations]\n" \
  "vp::elf_file=$TARGETSW_PATH_ELF\n" \
    >> $DYN_INI

VP_EXE="${ETISS_DIR}/examples/bare_etiss_processor/build/main"

CMD_OPTIONS=""

USE_GDB=0
USE_TGDB=0
DO_NOT_ATTACH=0
ENABLE_DMI="true"
LOG_PC="false"
LOG_LEVEL=4
DO_TRACE=0
JIT="TCCJIT"
shift
while [ "$#" -gt 0 ];
do
    arg="$1"
    if [ "$arg" = "gdb" ]; then
        USE_GDB=1
    elif [ "$arg" = "tgdb" ]; then
        USE_TGDB=1
        echo -e "[Plugin gdbserver]\n port=2222" >> $DYN_INI
    elif [ "$arg" = "noattach" ]; then
        DO_NOT_ATTACH=1
    elif [ "$arg" = "nodmi" ]; then
        ENABLE_DMI="false"
    elif [ "$arg" = "logpc" ]; then
        LOG_PC="true"
    elif [ "$arg" = "v" ]; then
        LOG_LEVEL=5
    elif [ "$arg" = "trace" ]; then
        DO_TRACE=1
    elif [ "$arg" = "gcc" ]; then
        JIT="GCCJIT"
    elif [ "$arg" = "llvm" ]; then
        JIT="LLVMJIT"
    elif [ "$arg" = "vp" ]; then
        VP_EXE="$2"
        shift
    else
        CMD_OPTIONS="${CMD_OPTIONS} ${arg}"
    fi
    shift
done

echo -e "[BoolConfigurations]\n ETISS::enable_dmi=${ENABLE_DMI}" >> $DYN_INI
echo -e "[BoolConfigurations]\n ETISS::log_pc=${LOG_PC}" >> $DYN_INI
echo -e "[IntConfigurations]\n logLevel=${LOG_LEVEL}" >> $DYN_INI
if [ "${DO_TRACE}" -eq 1 ]; then
    echo -e "[BoolConfigurations]\n DebugSystem::printDbusAccess=true" >> $DYN_INI
    echo -e "[BoolConfigurations]\n DebugSystem::printToFile=true" >> $DYN_INI
fi

echo -e "[StringConfigurations]\n JIT_Type=${JIT}" >> $DYN_INI


# Call
ARGS="-i${ETISS_DIR}/examples/bare_etiss_processor/base.ini -i${DYN_INI}"
if [ "${USE_TGDB}" -eq 1 ]; then
    if [ "${DO_NOT_ATTACH}" -eq 0 ]; then
        konsole --workdir $(pwd) -e "bash -c '/usr/local/research/projects/SystemDesign/tools/riscv/current/bin/riscv64-unknown-elf-gdb -ex \"tar rem :2222\" $TARGETSW_PATH_ELF'" &
    fi
fi
if [ "${USE_GDB}" -eq 1 ]; then
    gdb --args ${VP_EXE} ${ARGS}
else
    ${VP_EXE} ${ARGS} ${CMD_OPTIONS}
fi

rm $DYN_INI
