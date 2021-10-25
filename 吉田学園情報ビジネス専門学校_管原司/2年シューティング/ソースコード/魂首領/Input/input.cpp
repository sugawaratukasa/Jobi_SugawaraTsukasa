//******************************************************************************
// 入力処理 [input.cpp]
// Author : 管原 司
//******************************************************************************

//******************************************************************************
// インクルードファイル
//******************************************************************************
#include "../System/main.h"
#include "input.h"
#include "inputkeyboard.h"
#include "inputjoystick.h"
//******************************************************************************
// 静的メンバ変数
//******************************************************************************
LPDIRECTINPUT8 CInput::m_pDInput = NULL;
//******************************************************************************
// コンストラクタ
//******************************************************************************
CInput::CInput()
{
	m_pDevice = NULL;
}
//******************************************************************************
// デストラクタ
//******************************************************************************
CInput::~CInput()
{
}
//******************************************************************************
// 初期化関数
//******************************************************************************
HRESULT CInput::Init(HINSTANCE hInstance, HWND hWnd)
{

	if (FAILED(DirectInput8Create(hInstance, DIRECTINPUT_VERSION, IID_IDirectInput8, (void**)&m_pDInput, NULL)))
	{
		return E_FAIL;
	}

	return S_OK;
}
//******************************************************************************
// 終了関数
//******************************************************************************
void CInput::Uninit(void)
{
	if (m_pDevice != NULL)
	{
		//デバイス制御の停止
		m_pDevice->Unacquire();
		m_pDevice->Release();
		m_pDevice = NULL;
	}
	if (m_pDInput != NULL)
	{
		m_pDInput->Release();
		m_pDInput = NULL;
	}
}