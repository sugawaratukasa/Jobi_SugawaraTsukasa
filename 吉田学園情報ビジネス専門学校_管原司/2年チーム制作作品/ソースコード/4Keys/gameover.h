//=============================================================================
//
// ゲームオーバー処理 [gameover.h]
// Author : 林川紗梨夏
//
//=============================================================================
#ifndef _GAMEOVER_H_
#define _GAMEOVER_H_

//*****************************************************************************
//ヘッダファイルのインクルード
//*****************************************************************************
#include "mode.h"

//*****************************************************************************
//クラス定義
//*****************************************************************************
class CGameover :public CMode
{
public:
	CGameover();
	~CGameover();
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static HRESULT Load(void);
	static void Unload(void);

private:
	bool m_bSoundDecision;	//決定ボタンサウンドが再生されているかの判定
	static LPDIRECT3DTEXTURE9 m_pTexture;
};

#endif