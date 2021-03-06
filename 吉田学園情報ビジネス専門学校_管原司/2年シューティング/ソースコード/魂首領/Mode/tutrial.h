//******************************************************************************
// チュートリアル [tutrial.h]
// Author : 管原 司
//******************************************************************************
#ifndef _TUTRIAL_H_
#define _TUTRIAL_H_
//******************************************************************************
// インクルードファイル
//******************************************************************************
#include "mode.h"
//******************************************************************************
// クラス
//******************************************************************************
class CTutrial : public CMode
{
public:
	CTutrial();
	~CTutrial();
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	static LPDIRECT3DTEXTURE9 m_pTexture;	// テクスチャ
	bool m_bfade;							// フェード
};
#endif