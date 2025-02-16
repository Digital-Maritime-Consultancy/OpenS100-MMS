#include "stdafx.h"
#include "F_PTAS.h"
#include "PTAS.h"
#include "ISO8211Fuc.h"
#include "NonPrintableCharacter.h"

F_PTAS::F_PTAS()
{

}

F_PTAS::~F_PTAS()
{
	for (auto i = m_arr.begin(); i != m_arr.end(); i++)
	{
		auto ptas = *i;
		delete ptas;
	}
}

void F_PTAS::ReadField(BYTE *&buf)
{
	while(*buf != 0x1E){
		PTAS *ptas = new PTAS();
		ptas->m_name.RCNM = *(buf++);
		ptas->m_name.RCID = buf2uint(buf, 4);
		ptas->m_topi = *(buf++);

		m_arr.push_back(ptas);
	}
}

void F_PTAS::ReadField(BYTE *&buf, int loopCnt)
{
	for(int i = 0; i < loopCnt; i++)
	{
		PTAS *ptas = new PTAS();
		ptas->m_name.RCNM = *(buf++);
		ptas->m_name.RCID = buf2uint(buf, 4);
		ptas->m_topi = *(buf++);

		m_arr.push_back(ptas);
	}
}

bool F_PTAS::WriteField(CFile* file)
{
	for (auto i = m_arr.begin(); i != m_arr.end(); i++)
	{
		file->Write(&(*i)->m_name.RCNM, 1);
		file->Write(&(*i)->m_name.RCID, 4);
		file->Write(&(*i)->m_topi, 1);
	}

	file->Write(&NonPrintableCharacter::fieldTerminator, 1);

	return true;
}

int F_PTAS::GetFieldLength()
{
	int len = 0;

	for (auto i = m_arr.begin(); i != m_arr.end(); i++)
	{
		auto ptas = *i;
		len += ptas->GetSize();
	}
		
	return ++len;
}
