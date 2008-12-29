int selected_menu = 0;					//선택한 상위 메뉴

//배경그리기
void DrawBackground(){
	string TempString;
	int i;

	//이벤트 배경
	for(i = 0; i < 2; i++){
		if(Background[i] > 0){
			CopyImage(0, 20, bg[Background[i]]);
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

	//이동모드 기본 인터페이스 배경출력
	CopyImage(0, 0, int_top);
	//CopyImage(0, 245, int_foot);
	SetColor(S_BLACK);
	FillRect(0,245,240,298);

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

	DrawBackground();
	
}
