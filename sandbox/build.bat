REM Build script
@ECHO OFF
SetLocal EnableDelayedExpansion

REM Get all .c files
SET cFilenames=
FOR /R %%f in (*.c) do (
    SET cFilenames=!cFilenames! %%f
)

REM echo "Files:" $cFilenames%

SET assembly=sandbox
SET compilerFlags=-g
REM -Wall -Werror
SET includeFlags=-Isrc -I../engine/src
SET linkerFlags=-L../bin/ -lengine.lib
SET defines=-D_DEBUG -DIMPORT

ECHO "Building %assembly%%..."
clang %cFilenames% %compilerFlags% -o ../bin/%assembly%.exe %defines% %includeFlags% %linkerFlags%