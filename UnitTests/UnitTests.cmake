# Root
set(UNIT_TESTS_ROOT ${PHYSICS_REPO_ROOT}/UnitTests)

# Source files
set(UNIT_TESTS_SRC_FILES
	${UNIT_TESTS_ROOT}/Core/ArrayTest.cpp
	${UNIT_TESTS_ROOT}/Core/InsertionSortTest.cpp
	${UNIT_TESTS_ROOT}/Core/JobSystemTest.cpp
	${UNIT_TESTS_ROOT}/Core/LinearCurveTest.cpp
	${UNIT_TESTS_ROOT}/Core/PreciseMathTest.cpp
	${UNIT_TESTS_ROOT}/Core/ScopeExitTest.cpp
	${UNIT_TESTS_ROOT}/Core/StringToolsTest.cpp
	${UNIT_TESTS_ROOT}/Core/QuickSortTest.cpp
	${UNIT_TESTS_ROOT}/doctest.h
	${UNIT_TESTS_ROOT}/Layers.h
	${UNIT_TESTS_ROOT}/LoggingBodyActivationListener.h
	${UNIT_TESTS_ROOT}/LoggingContactListener.h
	${UNIT_TESTS_ROOT}/Math/DMat44Tests.cpp
	${UNIT_TESTS_ROOT}/Math/DVec3Tests.cpp
	${UNIT_TESTS_ROOT}/Math/HalfFloatTests.cpp
	${UNIT_TESTS_ROOT}/Math/Mat44Tests.cpp
	${UNIT_TESTS_ROOT}/Math/MathTests.cpp
	${UNIT_TESTS_ROOT}/Math/MatrixTests.cpp
	${UNIT_TESTS_ROOT}/Math/QuatTests.cpp
	${UNIT_TESTS_ROOT}/Math/UVec4Tests.cpp
	${UNIT_TESTS_ROOT}/Math/TrigonometryTests.cpp
	${UNIT_TESTS_ROOT}/Math/Vec3Tests.cpp
	${UNIT_TESTS_ROOT}/Math/Vec4Tests.cpp
	${UNIT_TESTS_ROOT}/Math/VectorTests.cpp
	${UNIT_TESTS_ROOT}/UnitTestFramework.cpp
	${UNIT_TESTS_ROOT}/UnitTestFramework.h
	${UNIT_TESTS_ROOT}/UnitTests.cmake
)

# Group source files
source_group(TREE ${UNIT_TESTS_ROOT} FILES ${UNIT_TESTS_SRC_FILES})
