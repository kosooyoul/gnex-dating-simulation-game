int Background[2] = {-1, -1};
int BackChara[3] = {-1, -1, -1};

void DrawBackground()
{
	int i;
	string temp;

	SetFontType(S_FONT_LARGE, S_JADE, S_BLACK, S_ALIGN_LEFT);

	for(i = 0; i < 2; i++)
	{
		//이미지 출력 코드
		if(Background[i] >= 0){
			CopyImage(0, 20, bg[Background[i]]);
		}
	}

	for(i = 0; i < 1; i++)
	{
		if(BackChara[i] >= 0){
			CopyImage(30, 100, chara[BackChara[i]]);
		}
		//이미지 출력 코드
		//임시->
		//MakeStr1(temp, "CharaImageNumber=%d", BackChara[i]);
		//DrawStr(115, 150 + i * 18, temp);
		//->임시
	}

	SetColor(S_BLACK);
	FillRect(0, 210, 240, 300);

}

void DrawInterface()
{
	string TempString;	

	SetShadeColor(S_BLUE, S_SKY);
	ShadeRect(0, 0, 239, 19, 3, 1);
	SetColor(S_BLACK);
	DrawRect(0, 0, 239, 19);

	CopyImage(0, 277, menu);
	CopyImage(47, 277, menu);
	CopyImage(94, 277, menu);
	CopyImage(141, 277, menu);
	CopyImage(188, 277, menu);

	//기능 출력
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(  5, 282, "1:스킵");
	DrawStr( 52, 282, "2:상태");
	DrawStr( 99, 282, "3:저장");
	DrawStr(146, 282, "4:옵션");
	DrawStr(193, 282, "5:종료");

	//날짜 출력
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr2(TempString, "%d/%2d", Now.Today.Year, Now.Today.Month);
	DrawStr(7, 8, TempString);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "%d", Now.Today.Day);
	DrawStr(70, 6, TempString);

	//시간 출력
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr2(TempString, "%d:%d", Now.Today.Hour, Now.Today.Minute);
	DrawStr(100, 8, TempString);

	//날씨 출력
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(180, 6, WEATHER[Now.Weather]);

}