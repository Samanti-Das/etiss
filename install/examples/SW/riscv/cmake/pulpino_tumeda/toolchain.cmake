set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR Pulpino)

IF(WIN32)
    set(EXE_EXT ".exe")
ENDIF()
set(DEFAULT_BASENAME "riscv64-unknown-elf")

set(RISCV_ELF_GCC_PREFIX "/usr/local/research/projects/SystemDesign/tools/riscv/current" CACHE PATH "install location for riscv-gcc toolchain")
set(RISCV_ELF_GCC_BASENAME ${DEFAULT_BASENAME} CACHE STRING "base name of the toolchain executables")
set(RISCV_ARCH "rv32gc" CACHE STRING "march argument to the compiler")
set(RISCV_ABI "ilp32d" CACHE STRING "mabi argument to the compiler")

set(CMAKE_C_COMPILER ${RISCV_ELF_GCC_PREFIX}/bin/${RISCV_ELF_GCC_BASENAME}-gcc${EXE_EXT})
set(CMAKE_CXX_COMPILER ${RISCV_ELF_GCC_PREFIX}/bin/${RISCV_ELF_GCC_BASENAME}-g++${EXE_EXT})
set(CMAKE_OBJCOPY ${RISCV_ELF_GCC_PREFIX}/bin/${RISCV_ELF_GCC_BASENAME}-objcopy${EXE_EXT})

add_definitions(-D__riscv__)
add_definitions(-march=${RISCV_ARCH})
add_definitions(-mabi=${RISCV_ABI})

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -march=${RISCV_ARCH} -mabi=${RISCV_ABI}")
