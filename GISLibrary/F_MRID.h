#pragma once
#include "Field.h"
#include "RecordName.h"

class F_MRID : Field
{
public:
	F_MRID();
	F_MRID(RecordName recordName, int RVER = 1, int RUIN = 1);
	virtual ~F_MRID();

public:
	RecordName m_name;
	int m_rver;
	int m_ruin;

public:
	void ReadField(BYTE *&buf);
	bool WriteField(CFile* file);
	int GetFieldLength();
};