int selected_menu = 0;					//선택한 상위 메뉴

//배경그리기
void DrawBackground(){
	string TempString;
	int i;

	//이벤트 배경
	for(i = 0; i < 2; i++){
		if(Background[i] > 0){
			DrawImage(0, 20, Background[i]);
			//CopyImage(0, 20, bg[Background[i]]);
		}
	}

	//이벤트 케릭터
	for(i = 0; i < 3; i++){
		if(BackChara[i] >= 0){
			switch(i){
				case 0:		CopyImage(10, 74, EveChara[BackChara[i]]);break;
				case 1:		CopyImage(130, 74, EveChara[BackChara[i]]);break;
				case 2:		CopyImage(130, 74, EveChara[BackChara[i]]);break;
			}
		}
	}
}

//인터페이스 그리기
void DrawInterface(){
	SetColor(S_BLACK);
	FillRect(0, 0, swWidth - 1, 40);
	FillRect(0, 245, swWidth - 1, swHeight - 1);
	SetFontType(S_FONT_LARGE, S_WHITE, S_TRANSPARENT, S_ALIGN_CENTER);
	DrawStr(swWidth / 2, 20, AreaName[Area[Player.map].name]);
	//이동모드 기본 인터페이스 배경출력
	//CopyImage(0, 0, int_top);
	//CopyImage(0, 245, int_foot);
	//CopyImage(0, 267, int_foottile);
	//CopyImage(0, 288, int_foottile);
	//CopyImage(0, 309, int_foottile);
	//SetColor(S_BLACK);
	//FillRect(0,245,240,298);
/*
	//날짜 출력
	CopyImage(26, 21, int_num_3[Now.Today.Year % 10]);
	CopyImage(43, 21, int_num_3[Now.Today.Month / 10]);
	CopyImage(50, 21, int_num_3[Now.Today.Month % 10]);
	CopyImage(68, 11, int_num_1[Now.Today.Day / 10]);
	CopyImage(82, 11, int_num_1[Now.Today.Day % 10]);

	//시간 출력
	CopyImage(145, 18, int_num_2[(Now.Today.Hour % 12) / 10]);
	CopyImage(156, 18, int_num_2[(Now.Today.Hour % 12) % 10]);
	CopyImage(176, 18, int_num_2[Now.Today.Minute / 10]);
	CopyImage(187, 18, int_num_2[Now.Today.Minute % 10]);

	//AM/PM 출력
	CopyImage(207, 18, int_apm[(Now.Today.Hour / 12)]);
*/
	DrawBackground();
	
}
