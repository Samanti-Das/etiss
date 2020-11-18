#!/bin/bash


if [[ -n "$1" ]]
then
  BUILD="$1"
  shift
fi

INIFILE=${1:-ETISS.ini}

# build virtual prototype
if [[ ! -f ./${BUILD}/main ]]
then
    echo "Doesn't seem to be a ${BUILD}/main executable - you probably need to build it!"
    echo "E.g. cmake -B ${BUILD} -S . -DCMAKE_BUILD_TYPE=Debug ; cmake --build ${BUILD}"
fi

export ETISS_DIR=/home/ge75guy/Desktop/ETISS_CI_SD/etiss/install
case `uname` in

    MINGW*)
        export PATH=`cygpath --unix "$ETISS_DIR"`"/lib:$PATH"
    ;;

    *)
        export LD_LIBRARY_PATH_EXTENTIONS=${ETISS_DIR}/lib
    ;;
esac

./${BUILD}/main -i${INIFILE}
