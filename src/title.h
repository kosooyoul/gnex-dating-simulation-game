int SelectedTitleMenu = 0;
int SelectedMenu = 0;
int SelectedObject = 0;

void RunTitle()
{
	SelectTitleMenu();
	DrawTitle();
	NextKey = 0;		//입력받은 키값 초기화
}

//타이틀 화면 출력
void DrawTitle()
{
	CopyImage(0, 0, title_back_title);
	CopyImage(0, 89, title_back_menu);

	switch(SelectedTitleMenu)
	{
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

	if(SelectedMenu)
	{
		CopyImageEx(0, 85, function_window, 1, 0, 0, 0);
		switch(SelectedTitleMenu)
		{
			case 1:
				ShowTitleContinue();
				break;

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
				switch(SelectedTitleMenu)
				{
					case 1:
						////////////////////////저장데이터 로드 부분//////////////////////////
						if(SelectedObject == 0)ChangeGameMode(2);	///////////임시///////////
						////////////////////////저장데이터 로드 부분//////////////////////////
						break;

					case 2:
						switch(SelectedObject)
						{
							case 0:
								OptionAutoSkip = !OptionAutoSkip;
								break;
							case 1:
								OptionSpokeSkip = !OptionSpokeSkip;
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

						ChangeGameMode(1);
						break;

					//이어하기
					case 1:
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

void ShowTitleContinue()
{
	int i;
	CopyImage(71, 61, function_name[0]);
	CopyImageEx(15, 100, function_load_left, 1, 0, 0, 0);
	CopyImageEx(166, 100, function_load_right, 1, 0, 0, 0);

	SetColor(S_WHITE);
	FillRectEx(167, 111 + 15 * SelectedObject, 223, 122 + 15 * SelectedObject, 1);

	CopyImageEx(167, 112, load_saved, 1, 0, 0, 0);
	for(i = 1; i < 6; i++)
	{
		CopyImageEx(167, 112 + 15 * i, load_empty, 1, 0, 0, 0);
	}

}

void ShowTitleOption()
{
	CopyImage(71, 61, function_name[1]);
	CopyImageEx(15, 100, function_option, 1, 0, 0, 0);

	if(OptionAutoSkip)
	{
		CopyImageEx(186, 108, function_check, 1, 0, 0, 0);
	}
	if(OptionSpokeSkip)
	{
		CopyImageEx(186, 136, function_check, 1, 0, 0, 0);
	}

	SetColor(S_WHITE);
	FillRectEx(16, 110 + 28 * SelectedObject, 223, 129 + 28 * SelectedObject, 3);
}

void ShowTitleGameInfo()
{
	CopyImage(71, 61, function_name[2]);
}