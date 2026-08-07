set -e
set +x

COMPONENT_NAME=$1
shift 1

if [ ! -d "indi-3rdparty/$COMPONENT_NAME" ]; then
	echo "incorrect component: $COMPONENT_NAME"
	exit 1
fi

rm -rf "build/3rdparty/$COMPONENT_NAME"
mkdir -p "build/3rdparty/$COMPONENT_NAME"
cd "build/3rdparty/$COMPONENT_NAME"

export CMAKE_PREFIX_PATH=/opt/indi

cmake -DCMAKE_INSTALL_PREFIX=/opt/indi \
        -DCMAKE_C_FLAGS="-O1 -g1 -march=native" \
        -DCMAKE_CXX_FLAGS="-O1 -g1 -march=native" \
        -DCMAKE_Fortran_FLAGS="-O1 -g1 -march=native" \
	"$@" "../../../indi-3rdparty/$COMPONENT_NAME"
cmake --build . -j4
sudo cmake --install .
