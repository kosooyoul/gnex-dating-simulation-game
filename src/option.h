#define SKIP_COUNT	5	//스킵까지 기다려야 하는 턴수

int OptionAutoSkip = 0;
int OptionPlayBGM = 1;

void DrawOption(){
	if(OptionAutoSkip){
		SetColor(S_RED);
		FillRect(2,2,6,6);
		SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
		DrawStr(19,2,"AUTO SKIP");
		DrawStr(21,2,"AUTO SKIP");
		DrawStr(20,1,"AUTO SKIP");
		DrawStr(20,3,"AUTO SKIP");
		SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(20,2,"AUTO SKIP");
	}
	if(OptionPlayBGM){
		SetColor(S_GREEN);
		FillRect(10,2,14,6);
		SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
		DrawStr(59,2,"PLAY BGM");
		DrawStr(61,2,"PLAY BGM");
		DrawStr(60,1,"PLAY BGM");
		DrawStr(60,3,"PLAY BGM");
		SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(60,2,"PLAY BGM");
	}
	SetColor(S_BLACK);
	DrawRect(2,2,6,6);
	DrawRect(10,2,14,6);
	SetColor(S_WHITE);
	DrawRect(1,1,7,7);
	DrawRect(9,1,15,7);
}

void ChangeOption(int Selected){

	switch(Selected){
		case 0:
			OptionAutoSkip = !OptionAutoSkip;
			break;

		case 1:
			OptionPlayBGM = !OptionPlayBGM;
			if(OptionPlayBGM){
				PlayMusic(PlayingBGM);
			}else{
				PlayMusic(-1);
			}
			break;
	}

}