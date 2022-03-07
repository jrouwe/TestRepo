// SPDX-FileCopyrightText: 2021 Jorrit Rouwe
// SPDX-License-Identifier: MIT

#include <Core.h>
#include "doctest.h"

inline void CHECK_APPROX_EQUAL(float inLHS, float inRHS, float inTolerance = 1.0e-6f)
{
	CHECK(abs(inRHS - inLHS) <= inTolerance);
}
