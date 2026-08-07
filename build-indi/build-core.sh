set -e
set +x

rm -rf build/core
mkdir -p build/core
cd build/core

cmake -DCMAKE_INSTALL_PREFIX=/opt/indi \
	-DCMAKE_C_FLAGS="-O1 -g1 -march=native" \
	-DCMAKE_CXX_FLAGS="-O1 -g1 -march=native" \
	-DCMAKE_Fortran_FLAGS="-O1 -g1 -march=native" \
	../../indi/
cmake --build . -j4
sudo cmake --install .
