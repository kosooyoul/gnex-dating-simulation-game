int selected_menu = 0;					//선택한 상위 메뉴

//인터페이스 그리기
void DrawInterface()
{
	string TempString;	

	FillRect(0,0,240,32);
	FillRect(0,245,240,298);

	SetShadeColor(S_BLUE, S_SKY);
	ShadeRect(0, 0, 239, 19, 3, 1);
	SetColor(S_BLACK);
	DrawRect(0, 0, 239, 19);

	//CopyImage(0, 277, menu);

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
