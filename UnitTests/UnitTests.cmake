# Root
set(UNIT_TESTS_ROOT ${PHYSICS_REPO_ROOT}/UnitTests)

# Source files
set(UNIT_TESTS_SRC_FILES
	${UNIT_TESTS_ROOT}/Test.cpp
	${UNIT_TESTS_ROOT}/LinearCurve.cpp
	${UNIT_TESTS_ROOT}/LinearCurve.h
	${UNIT_TESTS_ROOT}/TickCounter.cpp
	${UNIT_TESTS_ROOT}/UnitTestFramework.cpp
	${UNIT_TESTS_ROOT}/UnitTestFramework.h
	${UNIT_TESTS_ROOT}/LinearCurveTest.cpp
	${UNIT_TESTS_ROOT}/UnitTests.cmake
)

# Group source files
source_group(TREE ${UNIT_TESTS_ROOT} FILES ${UNIT_TESTS_SRC_FILES})
