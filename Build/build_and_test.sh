mkdir Linux_ReleaseCoverage
cmake -B Linux_ReleaseCoverage -DCMAKE_BUILD_TYPE=ReleaseCoverage
#cmake --build Linux_ReleaseCoverage --config ReleaseCoverage
cd Linux_ReleaseCoverage
make
make CTEST_OUTPUT_ON_FAILURE=1 test

