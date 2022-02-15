// S100Engine.cpp : DLL의 초기화 루틴을 정의합니다.
//

#include "stdafx.h"
#include "S100Engine.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

//
//TODO: 이 DLL이 MFC DLL에 대해 동적으로 링크되어 있는 경우
//		MFC로 호출되는 이 DLL에서 내보내지는 모든 함수의
//		시작 부분에 AFX_MANAGE_STATE 매크로가
//		들어 있어야 합니다.
//
//		예:
//
//		extern "C" BOOL PASCAL EXPORT ExportedFunction()
//		{
//			AFX_MANAGE_STATE(AfxGetStaticModuleState());
//			// 일반적인 함수 본문은 여기에 옵니다.
//		}
//
//		이 매크로는 MFC로 호출하기 전에
//		각 함수에 반드시 들어 있어야 합니다.
//		즉, 매크로는 함수의 첫 번째 문이어야 하며
//		개체 변수의 생성자가 MFC DLL로
//		호출할 수 있으므로 개체 변수가 선언되기 전에
//		나와야 합니다.
//
//		자세한 내용은
//		MFC Technical Note 33 및 58을 참조하십시오.
//

// CS100EngineApp

BEGIN_MESSAGE_MAP(CS100EngineApp, CWinApp)
END_MESSAGE_MAP()

// CS100EngineApp 생성

CS100EngineApp::CS100EngineApp()
{
	
}

// 유일한 CS100EngineApp 개체입니다.
//CS100EngineApp theApp;

const GUID CDECL _tlid = {0x94dfd6cf,0xdd49,0x422c,{0xb3,0x05,0x6d,0x33,0x3d,0x35,0x50,0xd3}};
const WORD _wVerMajor = 1;
const WORD _wVerMinor = 0;


// CS100EngineApp 초기화

BOOL CS100EngineApp::InitInstance()
{
	CWinApp::InitInstance();

	// OLE 서버(팩터리)를 실행 중인 것으로 등록합니다.  이렇게 하면
	//  OLE 라이브러리가 다른 응용 프로그램에서 개체를 만들 수 있습니다.
	COleObjectFactory::RegisterAll();

	return TRUE;
}

// DllGetClassObject - 클래스 팩터리를 반환합니다.

STDAPI DllGetClassObject(REFCLSID rclsid, REFIID riid, LPVOID* ppv)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());
	return AfxDllGetClassObject(rclsid, riid, ppv);
}


// DllCanUnloadNow - COM에서 DLL을 언로드할 수 있도록 합니다.

STDAPI DllCanUnloadNow(void)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());
	return AfxDllCanUnloadNow();
}


// DllRegisterServer - 시스템 레지스트리에 항목을 추가합니다.

STDAPI DllRegisterServer(void)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!AfxOleRegisterTypeLib(AfxGetInstanceHandle(), _tlid))
		return SELFREG_E_TYPELIB;

	if (!COleObjectFactory::UpdateRegistryAll())
		return SELFREG_E_CLASS;

	return S_OK;
}


// DllUnregisterServer - 시스템 레지스트리에서 항목을 제거합니다.

STDAPI DllUnregisterServer(void)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

	if (!AfxOleUnregisterTypeLib(_tlid, _wVerMajor, _wVerMinor))
		return SELFREG_E_TYPELIB;

	if (!COleObjectFactory::UpdateRegistryAll(FALSE))
		return SELFREG_E_CLASS;

	return S_OK;
}


S100Engine::S100Engine()
{
}


S100Engine::~S100Engine()
{
}


void S100Engine::CreateBackgroundGeometry(ID2D1Factory1* pD2Factory)
{
	s100Render.CreateBackgroundGeometry(pD2Factory);
}


bool S100Engine::OpenS101(CString _path)
{
	return s100DatasetManager.OpenS101(_path);
}

void S100Engine::CreateBitmapImage(ID2D1Factory1* pDirect2dFactory, IWICImagingFactory* pImagingFactory, ID2D1StrokeStyle1* pStrokeStyleS101Solid)
{
	s100PCManager.CreateBitmapImage(pDirect2dFactory, pImagingFactory, pStrokeStyleS101Solid);
}


void S100Engine::CreateLineImage(ID2D1Factory1* pDirect2dFactory, IWICImagingFactory* pImagingFactory, ID2D1StrokeStyle1* pStrokeStyleS101Solid)
{
	s100PCManager.CreateLineImage(pDirect2dFactory, pImagingFactory, pStrokeStyleS101Solid);
}


bool S100Engine::OpenS101SENC(CString path)
{
	return s100DatasetManager.OpenS101SENC(path);
}


void S100Engine::Draw(ID2D1Factory1* pDirect2dFactory, ID2D1DCRenderTarget* pRenderTarget, IDWriteTextFormat* pTextFormat, ID2D1SolidColorBrush* pBrush, ID2D1StrokeStyle1* pStrokeStyleS101Solid, ID2D1StrokeStyle1* pStrokeStyleS101Dash, CRect& rectView)
{
	s100Render.Draw(s100DatasetManager, s100PCManager, pDirect2dFactory, pRenderTarget, pTextFormat, pBrush, pStrokeStyleS101Solid, pStrokeStyleS101Dash, s100PCManager.areaFillInfo, rectView);
}


void S100Engine::DrawSymbol(
	std::wstring _symbolName,
	ID2D1RenderTarget* pRenderTarget,
	ID2D1SolidColorBrush* pBrush,
	ID2D1StrokeStyle1* pStrokeStyle,
	D2D1_POINT_2F point,
	FLOAT rotation,
	FLOAT scale)
{
	s100PCManager.Draw(
		_symbolName,
		pRenderTarget,
		pBrush,
		pStrokeStyle,
		point,
		rotation,
		scale);
}


bool S100Engine::OpenS100PortrayalCatalogue(CString folderPath)
{
	return true;
}


bool S100Engine::OpenS100ColorProfile(std::wstring _path)
{
	return s100PCManager.OpenS100ColorProfile(_path);
}


bool S100Engine::OpenS100Symbol(std::wstring _path)
{
	return s100PCManager.OpenS100Symbol(_path);
}


bool S100Engine::OpenS100AreaFills(std::wstring _path)
{
	return s100PCManager.OpenS100AreaFills(_path);
}


bool S100Engine::OpenS100LineStyles(std::wstring _path)
{
	return s100PCManager.OpenS100LineStyles(_path);
}


void S100Engine::CreateSVGGeometry(ID2D1Factory1* pDirect2dFactory)
{
	s100PCManager.CreateSVGGeometry(pDirect2dFactory);
}


void S100Engine::CreateS100DrawingUnit(ID2D1Factory1* pDirect2dFactory)
{
	s100DatasetManager.CreateS100DrawingUnit(pDirect2dFactory, s100PCManager);
}


void S100Engine::CreateBitmapBrush(ID2D1RenderTarget* pRenderTarget)
{
	s100PCManager.CreateBitmapBrush(pRenderTarget);
}


void S100Engine::DeleteBitmapBrush()
{
	s100PCManager.DeleteBitmapBrush();
}


void S100Engine::DeleteBitmapImage()
{
	s100PCManager.DeleteBitmapImage();
}


void S100Engine::DeleteS100DrawingUnit()
{
	s100DatasetManager.DeleteS100DrawingUnit();
}


void S100Engine::KeyDown(UINT nChar, CRect& rectView, int dpiX, int dpiY)
{
	s100DatasetManager.GetBoundingBox(s100Render.xmin, s100Render.ymin, s100Render.xmax, s100Render.ymax);

	s100Render.KeyDown(nChar, rectView, dpiX, dpiY);
}


void S100Engine::SetD2Factory(ID2D1Factory1* factory)
{
	pDirect2dFactory = factory;
}