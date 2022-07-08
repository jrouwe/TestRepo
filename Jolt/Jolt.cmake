# Root
set(JOLT_PHYSICS_ROOT ${PHYSICS_REPO_ROOT}/Jolt)

# Source files
set(JOLT_PHYSICS_SRC_FILES
	${JOLT_PHYSICS_ROOT}/Core/Core.h
	${JOLT_PHYSICS_ROOT}/Core/Factory.cpp
	${JOLT_PHYSICS_ROOT}/Core/Factory.h
)

if ("${CMAKE_SYSTEM_NAME}" STREQUAL "Windows")
	# Add natvis file
	set(JOLT_PHYSICS_SRC_FILES ${JOLT_PHYSICS_SRC_FILES} ${JOLT_PHYSICS_ROOT}/Jolt.natvis)
endif()

# Group source files
source_group(TREE ${JOLT_PHYSICS_ROOT} FILES ${JOLT_PHYSICS_SRC_FILES})

# Create Jolt lib
add_library(Jolt STATIC ${JOLT_PHYSICS_SRC_FILES})
target_include_directories(Jolt PUBLIC ${PHYSICS_REPO_ROOT})
target_precompile_headers(Jolt PRIVATE ${JOLT_PHYSICS_ROOT}/Jolt.h)
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Debug>:_DEBUG;JPH_PROFILE_ENABLED;JPH_DEBUG_RENDERER>")
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Release>:NDEBUG;JPH_PROFILE_ENABLED;JPH_DEBUG_RENDERER>")
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:Distribution>:NDEBUG>")
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:ReleaseASAN>:NDEBUG;JPH_PROFILE_ENABLED;JPH_DISABLE_TEMP_ALLOCATOR;JPH_DISABLE_CUSTOM_ALLOCATOR;JPH_DEBUG_RENDERER>")
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:ReleaseUBSAN>:NDEBUG;JPH_PROFILE_ENABLED;JPH_DEBUG_RENDERER>")
target_compile_definitions(Jolt PUBLIC "$<$<CONFIG:ReleaseCoverage>:NDEBUG>")
