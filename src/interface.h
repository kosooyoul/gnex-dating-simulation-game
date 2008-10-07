int Background[2] = {0, 0};
int BackChara[3] = {0, 0, 0};

void DrawBackground()
{
	int i;
	string temp;

	SetFontType(S_FONT_LARGE, S_BLUE, S_BLACK, S_ALIGN_LEFT);

	for(i = 0; i < 2; i++)
	{
		//이미지 출력 코드
		//임시->
		MakeStr1(temp, "BackImageNumber=%d", Background[i]);
		DrawStr(5, 190 + i * 18, temp);
		//->임시
	}


	for(i = 0; i < 3; i++)
	{
		//이미지 출력 코드
		//임시->
		MakeStr1(temp, "CharaImageNumber=%d", BackChara[i]);
		DrawStr(125, 190 + i * 18, temp);
		//->임시
	}

}

void DrawInterface()
{
	string TempString;	

	SetShadeColor(S_BLACK, S_PINK);
	ShadeRect(4, 5, 50, 17, 3, 1);
	SetColor(S_BLOODRED);
	DrawRect(4, 5, 50, 17);

	ShadeRect(4, 19, 50, 40, 3, 1);
	SetColor(S_BLOODRED);
	DrawRect(4, 19, 50, 40);

	ShadeRect(4, 42, 50, 58, 3, 1);
	SetColor(S_BLOODRED);
	DrawRect(4, 42, 50, 58);

	ShadeRect(52, 5, 150, 17, 3, 1);
	SetColor(S_BLOODRED);
	DrawRect(52, 5, 150, 17);


	ShadeRect(180, 5, 235, 150, 3, 1);
	SetColor(S_BLOODRED);
	DrawRect(180, 5, 235, 150);

	//기능 출력
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(190, 20, "1:스킵");
	DrawStr(190, 40, "2:저장");
	DrawStr(190, 60, "3:읽기");
	DrawStr(190, 80, "4:옵션");
	DrawStr(190, 100, "5:종료");

	//날짜 출력
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr2(TempString, "%d/%2d", Now.Today.Year, Now.Today.Month);
	DrawStr(7, 8, TempString);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "%d", Now.Today.Day);
	DrawStr(7, 23, TempString);

	//시간 출력
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr2(TempString, "%d:%d", Now.Today.Hour, Now.Today.Minute);
	DrawStr(55, 8, TempString);

	//날씨 출력
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(7, 44, WEATHER[Now.Weather]);

}