#pragma once

#include "SGeometry.h"
#include "SCurveHasOrient.h"

class Scaler;
class GeoPoint;
class MBR;
class SCurve;
class SCompositeCurve;

class SSurface : public SGeometry
{
public:
	SSurface();
	SSurface(MBR* mbr);
	SSurface(std::vector<POINT>& points, std::vector<int>& parts);
	virtual ~SSurface();
	
public:
	// Area points
	int m_numParts = 0;
	int	m_numPoints = 0;
	int* m_pParts = nullptr;

	GeoPoint* m_pPoints = nullptr;
	GeoPoint* m_centerPoint = nullptr;
	
	// Curve points
	std::list<SCurveHasOrient> curveList;

	//std::list<SCurve*> curveList;
	//SCompositeCurve* compositeCurve = nullptr;

	// Rings (front() is outerior)
	//std::list<SGeometry*> curves;

	// AreaD2Geometry
	ID2D1PathGeometry* pGeometry = nullptr;

public:

	int GetNumPointPerPart(int partIndex);
	void CalculateCenterPoint();
	
	void CreateD2Geometry(ID2D1Factory1* factory);
	
	ID2D1PathGeometry* GetD2Geometry();
	ID2D1PathGeometry* GetNewD2Geometry(ID2D1Factory1* factory, Scaler* scaler);

	void AddCurve(SCurve* curve);
	void AddCompositeCurve(SCompositeCurve* compositeCurve);
	
	void Init();
	void Set(std::vector<POINT>& points, std::vector<int>& parts);
};