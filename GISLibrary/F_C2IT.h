#pragma once
#include "Field.h"

class F_C2IT :
	public Field
{
public:
	F_C2IT();
	virtual ~F_C2IT();

public:
	/*
	* Coordinate in Y axis
	* Format		: b24
	* Description	: Y-coordinate or latitude
	*/
	int m_ycoo = 0;
	/*
	* Coordinate in X axis
	* Format		: b24
	* Description	: X-coordinate or longitude
	*/
	int m_xcoo = 0;
	static int GetSize();

public:
	void ReadField(BYTE *&buf);
	bool WriteField(CFile* file);
	int GetFieldLength();
};