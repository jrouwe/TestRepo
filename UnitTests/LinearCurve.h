// SPDX-FileCopyrightText: 2021 Jorrit Rouwe
// SPDX-License-Identifier: MIT

#pragma once

namespace JPH {

// A set of points (x, y) that form a linear curve
class LinearCurve
{
public:
	/// A point on the curve
	class Point
	{
	public:
		float			mX = 0.0f;
		float			mY = 0.0f;
	};

	/// Remove all points
	void				Clear()											{ mPoints.clear(); }

	/// Reserve memory for inNumPoints points
	void				Reserve(uint inNumPoints)						{ mPoints.reserve(inNumPoints); }

	/// Add a point to the curve. Points must be inserted in ascending X or Sort() needs to be called when all points have been added.
	/// @param inX X value
	/// @param inY Y value
	void				AddPoint(float inX, float inY)					{ mPoints.push_back({ inX, inY }); }

	/// Sort the points on X ascending
	void				Sort()											{ sort(mPoints.begin(), mPoints.end(), [](const Point &inLHS, const Point &inRHS) { return inLHS.mX < inRHS.mX; }); }

	/// Get the lowest X value
	float				GetMinX() const									{ return mPoints.empty()? 0.0f : mPoints.front().mX; }

	/// Get the highest X value
	float				GetMaxX() const									{ return mPoints.empty()? 0.0f : mPoints.back().mX; }

	/// Sample value on the curve
	/// @param inX X value to sample at
	/// @return Interpolated Y value
	float				GetValue(float inX) const;

	/// The points on the curve, should be sorted ascending by x
	using Points = vector<Point>;
	Points				mPoints;
};

} // JPH