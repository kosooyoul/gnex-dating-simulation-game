int SelectedTitleMenu = 0;
int SelectedMenu = 0;
int SelectedObject = 0;

void RunTitle(){
	SelectTitleMenu();
	DrawTitle();
	NextKey = -1;		//입력받은 키값 초기화
}

//타이틀 화면 출력
void DrawTitle(){
	CopyImage(0, 0, title_back_title);
	CopyImage(0, 89, title_back_menu);

	switch(SelectedTitleMenu){
		case 0:
			CopyImage(100, 136, title_menu[SelectedTitleMenu]);
			break;

		case 1:
			CopyImage(100, 166, title_menu[SelectedTitleMenu]);
			break;

		case 2:
			CopyImage(100, 197, title_menu[SelectedTitleMenu]);
			break;

		case 3:
			CopyImage(100, 226, title_menu[SelectedTitleMenu]);
			break;

		case 4:
			CopyImage(100, 255, title_menu[SelectedTitleMenu]);
			break;
		
		default:
			break;
	}

	if(SelectedMenu){
		CopyImageEx(0, 85, title_window, 1, 0, 0, 0);
		switch(SelectedTitleMenu){
			case 2:
				ShowTitleOption();
				break;

			case 3:
				ShowTitleGameInfo();
				break;
		}
	}
}

//타이틀 화면 제어 및 키 입력 처리
void SelectTitleMenu()
{	
	//메뉴 선택한 상태
	if(SelectedMenu)
	{
		switch(NextKey)
		{
			case SWAP_KEY_UP:
				switch(SelectedTitleMenu)
				{
					case 1:
						SelectedObject = (SelectedObject + 5) % 6;
						break;

					case 2:
						SelectedObject = (SelectedObject + 1) % 2;
						break;

					case 3:
						break;
				}
				break;

			case SWAP_KEY_DOWN:
				switch(SelectedTitleMenu)
				{
					case 1:
						SelectedObject = (SelectedObject + 1) % 6;
						break;

					case 2:
						SelectedObject = (SelectedObject + 1) % 2;
						break;

					case 3:
						break;
				}
				break;

			case SWAP_KEY_OK:
				switch(SelectedTitleMenu){
					case 1:
						////////////////////////저장데이터 로드 부분//////////////////////////
						if(SelectedObject == 0)ChangeMode(2);		///////////임시///////////
						////////////////////////저장데이터 로드 부분//////////////////////////
						break;

					case 2:
						switch(SelectedObject){
							case 0:
								OptionAutoSkip = !OptionAutoSkip;
								break;
							case 1:
								OptionPlayBGM = !OptionPlayBGM;
								break;
						}
						break;

					case 3:
						break;
				}
				break;

			case SWAP_KEY_CLR:
				SelectedObject = 0;
				SelectedMenu = 0;
				break;

			default:
				break;
		}
	}
	//메뉴 고를수 있는 상태
	else
	{
		switch(NextKey)
		{
			case SWAP_KEY_UP:
				SelectedTitleMenu = (SelectedTitleMenu + 4) % 5;
				break;

			case SWAP_KEY_DOWN:
				SelectedTitleMenu = (SelectedTitleMenu + 1) % 5;
				break;

			case SWAP_KEY_OK:
				switch(SelectedTitleMenu)
				{
					//시작
					case 0:
						ChangeMode(1);
						break;

					//이어하기
					case 1:
						ChangeMode(2);
						break;

					//옵션
					case 2:
					//게임정보
					case 3:
						SelectedMenu = 1;
						break;

					//종료
					case 4:
						Exit();
						break;
					default:
						break;
				}
				break;

			default:
				break;
		}
	}

}

void ShowTitleOption(){
	CopyImage(71, 61, title_label_option);
	CopyImageEx(15, 100, title_option, 1, 0, 0, 0);

	if(OptionAutoSkip){
		CopyImageEx(186, 108, func_check, 1, 0, 0, 0);
	}
	if(OptionPlayBGM){
		CopyImageEx(186, 136, func_check, 1, 0, 0, 0);
	}

	SetColor(S_WHITE);
	FillRectEx(16, 110 + 28 * SelectedObject, 223, 129 + 28 * SelectedObject, 3);
}

void ShowTitleGameInfo(){
	CopyImage(71, 61, title_label_info);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	DrawStr(120, 115, "4조");
	DrawStr(120, 130, "(연애 시뮬레이션)");
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(20, 155, "조장 : 이진중");
	DrawStr(20, 170, "조원 : 차지웅, 최영민, 고수열");
	


}