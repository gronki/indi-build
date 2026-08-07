export CMAKE_PREFIX_PATH=/opt/indi

mkdir -p build
#rm -rf build/*
cd build
cmake ../phd2 \
        -DCMAKE_C_FLAGS="-O1 -g1" \
        -DCMAKE_CXX_FLAGS="-O1 -g1" \
        -DCMAKE_Fortran_FLAGS="-O1 -g1" \
	-DCMAKE_INSTALL_PREFIX=/opt/phd2 \
	-DUSE_SYSTEM_LIBINDI=1 -DUSE_SYSTEM_CFITSIO=1
cmake --build . -j4
sudo cmake --install .
