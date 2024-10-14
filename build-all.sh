#Build all
# chmod +x build-all.sh
# chmod +x engine/build.sh
# chmod +x sanbox/build.sh
set echo on

echo "Building all.."

pushd engine
source build.sh
popd

ERRORLEVEL=$?
if [ $ERRORLEVEL -ne 0 ]
then echo "Error:"$ERRORLEVEL && exit
fi

pushd sandbox
source build.sh
popd
ERRORLEVEL=$?
if [ $ERRORLEVEL -ne 0 ]
then echo "Error:"$ERRORLEVEL && exit
fi

echo "All assemblies have been built

