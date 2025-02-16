#pragma once

#include "SAbstractCurve.h"

class SPoint;
class SCurve : public SAbstractCurve
{
public:
	SCurve();
	virtual ~SCurve();
	
public:
	int m_numPoints = 0;
	SPoint* m_pPoints = nullptr;
	ID2D1PathGeometry* pGeometry = nullptr;

	bool m_masking = false;
	bool suppress = false;

private:
	//int m_id = 0;

public:
	SGeometryType GetType() override;

	int GetRCID();
	
	int GetNumPoints();
	int getNumPoint() override;

	double GetX(int index) override;
	double GetY(int index) override;
	double GetX() override;
	double GetY() override;

	void Init(int size);
	void Set(int index, double x, double y) override;
	
public:
	void CreateD2Geometry(ID2D1Factory1* factory);
	ID2D1PathGeometry* GetD2Geometry();
	ID2D1PathGeometry* GetNewD2Geometry(ID2D1Factory1* factory, Scaler* scaler);
	void SetMBR();
	bool ImportFromWkb(unsigned char* value, int size);
	bool ExportToWkb(unsigned char** value, int* size);
	int WkbSize();

	void Projection();
	void SetMultiplicationFactor(int comfX, int comfY);
	void SetRCID(int value);

	bool IsClosed();

	SPoint* GetPoint(int index);
	SPoint* GetFirstPoint();
	SPoint* GetLastPoint();

	std::string ToString() override;

	void SetMasking(bool value);
	bool GetMasking();

	void SetSuppress(bool value);
	bool GetSuppress();

	bool isDraw();
};
