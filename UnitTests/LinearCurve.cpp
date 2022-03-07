// SPDX-FileCopyrightText: 2021 Jorrit Rouwe
// SPDX-License-Identifier: MIT

#include <Core.h>

#include <LinearCurve.h>

namespace JPH {

float LinearCurve::GetValue(float inX) const
{
	if (mPoints.empty())
		return 0.0f;

	Points::const_iterator i2 = lower_bound(mPoints.begin(), mPoints.end(), inX, [](const Point &inPoint, float inValue) { return inPoint.mX < inValue; });

	if (i2 == mPoints.begin())
		return mPoints.front().mY;
	else if (i2 == mPoints.end())
		return mPoints.back().mY;

	Points::const_iterator i1 = i2 - 1;
	return i1->mY + (inX - i1->mX) * (i2->mY - i1->mY) / (i2->mX - i1->mX);
}

} // JPH