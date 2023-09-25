#include "pch.h"
#include "ConfigurationMMSAgent.h"
#include "OpenS100.h"

// Configuration_4 dialog box
IMPLEMENT_DYNAMIC(ConfigurationMMSAgent, CDialogEx)

ConfigurationMMSAgent::ConfigurationMMSAgent(CWnd* pParent /*=nullptr*/)
	: CDialogEx(ConfigurationMMSAgent::IDD, pParent)
{

}

ConfigurationMMSAgent::~ConfigurationMMSAgent()
{

}

void ConfigurationMMSAgent::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}


BOOL ConfigurationMMSAgent::OnInitDialog()
{
	CDialogEx::OnInitDialog();
	try
	{
		

		return true;  // return TRUE unless you set the focus to a control
	}
	catch (int exceptionCode)
	{
		exceptionCode = 0;
		return false;
	}
}

void ConfigurationMMSAgent::Apply()
{

	//theApp.pView->MapRefresh();
}