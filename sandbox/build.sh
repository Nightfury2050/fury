#!/bin/bash
#Build script
set echo on

mkdir -p ../bin

#Fetch all .c files
cFilenames=$(find. -type f -name "*.c")

#echo "Files:" $cFilenames

assembly="sandbox"
compilerFlags="-g -fdeclspec -fPIC"
# -fms-extensions
# -Wall -Werror
includeFlags="-Isrc -I../engine/src"
linkerFlags="-L../bin/ -lengine -Wl,-rpath,."
defines="-D_DEBUG -DKEXPORT"

echo "Building $assembly.."
echo clang $cFilenames $compilerFlags -0 ../bin/$assembly $defines $includeFlags $linkerFlags
clang $cFilenames $compilerFlags -0 ../bin/$assembly $defines $includeFlags $linkerFlags