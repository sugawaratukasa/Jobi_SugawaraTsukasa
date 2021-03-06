//******************************************************************************
// タイトル [title.h]
// Author : 管原　司
//******************************************************************************
#ifndef _TITLE_H_
#define _TITLE_H_
//******************************************************************************
// マクロ定義
//******************************************************************************

//*****************************************************************************
//ヘッダファイルのインクルード
//*****************************************************************************
#include "mode.h"
//*****************************************************************************
//前方宣言
//*****************************************************************************

//*****************************************************************************
//クラス定義
//*****************************************************************************
class CTitle :public CMode
{
public:
	CTitle();
	~CTitle();
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);

private:
};
#endif