//=============================================================================CResultStory
//
// リザルトストーリークラス [result_story.cpp]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// インクルード
//=============================================================================
#include "manager.h"
#include "renderer.h"
#include "camera.h"
#include "game.h"
#include "light.h"
#include "result_story.h"

//=============================================================================
// マクロ定義
//=============================================================================
#define RESULT_STORY_POS		(D3DXVECTOR3(SCREEN_WIDTH / 2, SCREEN_HEIGHT*1.5f, 0.0f))
#define RESULT_STORY_SIZE		(D3DXVECTOR3(SCREEN_WIDTH*0.7f, SCREEN_HEIGHT, 0.0f))
#define SCROLL_SPEED			(1.0f)

//=============================================================================
// コンストラクタ
//=============================================================================
CResultStory::CResultStory(PRIORITY Priority) : CScene2D(Priority)
{
	m_bEnd = false;
}

//=============================================================================
// デストラクタ
//=============================================================================
CResultStory::~CResultStory()
{
}

//=============================================================================
// インスタンス生成
//=============================================================================
CResultStory * CResultStory::Create(void)
{
	// メモリ確保
	CResultStory *pPolygon = new CResultStory(PRIORITY_UI);

	// !nullcheck
	if (pPolygon)
	{
		// 初期化処理
		pPolygon->Init();

		return pPolygon;
	}

	return nullptr;
}

//=============================================================================
// 初期化処理
//=============================================================================
HRESULT CResultStory::Init(void)
{
	// 初期化処理
	CScene2D::Init(RESULT_STORY_POS, RESULT_STORY_SIZE);

	return S_OK;
}

//=============================================================================
// 更新処理
//=============================================================================
void CResultStory::Update(void)
{
	GetPos().y -= SCROLL_SPEED;

	// 頂点の更新
	SetVertex();

	if (!m_bEnd)
	{
		if (0.0f >= GetPos().y + SCREEN_HEIGHT / 2)
		{
			m_bEnd = true;
		}
	}
}

//=============================================================================
// 描画処理
//=============================================================================
void CResultStory::Draw(void)
{
	// 描画処理
	CScene2D::Draw();
}
