#pragma once
#include <afxdialogex.h>
#include "resource.h"

class CConfigrationDlg;
class ConfigurationMMSAgent :
    public CDialogEx
{
	DECLARE_DYNAMIC(ConfigurationMMSAgent)

public:
	ConfigurationMMSAgent(CWnd* pParent = nullptr);
	virtual ~ConfigurationMMSAgent();

public:
	enum { IDD = IDD_DIALOG_CONFIG_4};
	CConfigrationDlg* m_pParent = nullptr;

public:
	void Apply();

protected:
	virtual void DoDataExchange(CDataExchange* pDX);

public:
	virtual BOOL OnInitDialog();
};

