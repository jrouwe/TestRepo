// Jolt Physics Library (https://github.com/jrouwe/JoltPhysics)
// SPDX-FileCopyrightText: 2021 Jorrit Rouwe
// SPDX-License-Identifier: MIT

#include <Jolt/Jolt.h>

#include <Jolt/RegisterTypes.h>
#include <Jolt/Core/Factory.h>
#include <Jolt/Core/RTTI.h>
#include <Jolt/Core/TickCounter.h>

JPH_NAMESPACE_BEGIN

bool VerifyJoltVersionIDInternal(uint64 inVersionID)
{
	return inVersionID == JPH_VERSION_ID;
}

void RegisterTypesInternal(uint64 inVersionID)
{
	// Version check
	if (!VerifyJoltVersionIDInternal(inVersionID))
	{
		Trace("Version mismatch, make sure you compile the client code with the same Jolt version and compiler definitions!");
		uint64 mismatch = JPH_VERSION_ID ^ inVersionID;
		auto check_bit = [mismatch](int inBit, const char *inLabel) { if (mismatch & (uint64(1) << (inBit + 23))) Trace("Mismatching define %s.", inLabel); };
		check_bit(1, "JPH_DOUBLE_PRECISION");
		check_bit(2, "JPH_CROSS_PLATFORM_DETERMINISTIC");
		check_bit(3, "JPH_FLOATING_POINT_EXCEPTIONS_ENABLED");
		check_bit(4, "JPH_PROFILE_ENABLED");
		check_bit(5, "JPH_EXTERNAL_PROFILE");
		check_bit(6, "JPH_DEBUG_RENDERER");
		check_bit(7, "JPH_DISABLE_TEMP_ALLOCATOR");
		check_bit(8, "JPH_DISABLE_CUSTOM_ALLOCATOR");
		check_bit(9, "JPH_OBJECT_LAYER_BITS");
		check_bit(10, "JPH_ENABLE_ASSERTS");
		check_bit(11, "JPH_OBJECT_STREAM");
		std::abort();
	}

#ifndef JPH_DISABLE_CUSTOM_ALLOCATOR
	JPH_ASSERT(Allocate != nullptr && Reallocate != nullptr && Free != nullptr && AlignedAllocate != nullptr && AlignedFree != nullptr, "Need to supply an allocator first or call RegisterDefaultAllocator()");
#endif // !JPH_DISABLE_CUSTOM_ALLOCATOR

	JPH_ASSERT(Factory::sInstance != nullptr, "Need to create a factory first!");
}

void UnregisterTypes()
{
	// Unregister all types
	if (Factory::sInstance != nullptr)
		Factory::sInstance->Clear();
}

JPH_NAMESPACE_END
