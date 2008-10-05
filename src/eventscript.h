int NextKey = -1;			//시스템:입력받은 키번호

int SelectedAnswer = 0;		//선택지 번호
int EventPointer = 0;		//실행중 이벤트라인 위치
int CurrentName = 0;		//현재 화자의 이름

int Variable[50];			//게임변수

//이벤트라인 수행
void RunEventLine(){

	switch(EventLine[EventPointer++])
	{
		case -1:	//이벤트 종료
			EventPointer = 0;
			break;

		case 0:		//대화
			if(NextKey == SWAP_KEY_OK)
			{
				DrawMessages(EventLine[EventPointer++]);
			}
			else
			{
				DrawMessages(EventLine[EventPointer--]);
			}
			NextKey = -1;
			break;

		case 1:		//선택지
			DrawQuestion(EventLine[EventPointer++],	EventLine[EventPointer++], EventLine[EventPointer++], EventLine[EventPointer++], EventLine[EventPointer++]);
			if(NextKey != SWAP_KEY_OK)
			{
				EventPointer -= 6;
			}
			NextKey = -1;
			break;

		case 2:
			SetCurrentName(EventLine[EventPointer++]);
			break;

		case 3:		//조건분기_변수 if(s==v[vn])goto
			EventPointer += 3 + IfEqual(EventLine[EventPointer], EventLine[EventPointer+1], EventLine[EventPointer+2]);
			break;

		case 4:		//조건분기_변수 if(s!=v[vn])goto
			EventPointer += 3 + ElseEqual(EventLine[EventPointer], EventLine[EventPointer+1], EventLine[EventPointer+2]);
			break;

		case 5:		//배경화면 교체
			SetBackground(EventLine[EventPointer++], EventLine[EventPointer++]);
			break;

		case 6:		//케릭터 교체
			SetChara(EventLine[EventPointer++], EventLine[EventPointer++]);
			break;

		case 7:		//?
			//?
			break;

		default:	//이벤트가 종료되었거나 없는 이벤트 호출시 초기화
			EventPointer = 0;
	}
}

/*		----- 이벤트 스크립트 함수 -----		*/

//0 > 대화창 출력
void DrawMessages(int MessageNumber)
{
	string TempString;	//줄단위
	int Length;			//문장 라인수
	int i;

	//한줄:반각문자18자(전각문자9자)
	Length = StrLen(Messages[MessageNumber]) / 36;

	if(CurrentName > -1)
	{
		//이름표시창 배경
		SetShadeColor (S_BLACK, S_PINK);
		ShadeRect(4, PNT_NAM_Y + 1, 235, PNT_NAM_Y + 22, 3, 1);
		SetColor(S_BLOODRED);
		DrawRect(3, PNT_NAM_Y, 236, PNT_NAM_Y + 23);

		//이름 출력
		SetFontType(S_FONT_LARGE, WIN_COLOR_C, S_BLACK, S_ALIGN_LEFT);
		DrawStr(9, PNT_NAM_Y + 6, Names[CurrentName]);
	}

	//대화창 배경
	SetShadeColor (S_BLACK, S_PINK);
	ShadeRect(4, PNT_MSG_Y + 1, 235, PNT_MSG_Y + 22 + Length * 15 + 15, 3, 1);
	SetColor(S_BLOODRED);
	DrawRect(3, PNT_MSG_Y, 236, PNT_MSG_Y + 23 + Length * 15 + 15);

	//대화 출력
	SetFontType(S_FONT_LARGE, WIN_COLOR_C, S_BLACK, S_ALIGN_LEFT);
	for(i = 0; i < Length + 1; i++)
	{
		StrSub(TempString, Messages[MessageNumber], i * 36, 36);
		DrawStr(9, PNT_MSG_Y + 6 + i * 15, TempString);
	}
}

//1 > 선택지 출력
void DrawQuestion(int Value, int Select1, int Select2, int Select3, int Select4)
{

	//선택지 배경
	SetShadeColor (S_BLACK, S_PINK);
	ShadeRect(4, PNT_SEL_Y + 1, 235, PNT_SEL_Y + 22 + 3 * 15, 3, 1);
	SetColor(S_BLOODRED);
	DrawRect(3, PNT_SEL_Y, 236, PNT_SEL_Y + 23 + 3 * 15);
	
	//선택지 내용
	SetFontType(S_FONT_LARGE, WIN_COLOR_C, S_BLACK, S_ALIGN_CENTER);
	DrawStr(120, PNT_SEL_Y + 6     , SelectMessages[Select1]);
	DrawStr(120, PNT_SEL_Y + 6 + 15, SelectMessages[Select2]);
	DrawStr(120, PNT_SEL_Y + 6 + 30, SelectMessages[Select3]);
	DrawStr(120, PNT_SEL_Y + 6 + 45, SelectMessages[Select4]);

	//키입력
	if(NextKey == SWAP_KEY_DOWN)
	{
		SelectedAnswer = (SelectedAnswer + 1) % 4;
	}
	else if(NextKey == SWAP_KEY_UP)
	{
		SelectedAnswer = (SelectedAnswer + 3) % 4;
	}
	else if(NextKey == SWAP_KEY_OK)
	{
		Variable[Value] = SelectedAnswer;
		SelectedAnswer = 0;
		return;
	}

	//선택항목 표시
	SetColor(S_WHITE);
	FillRectEx(6, PNT_SEL_Y + 4 + SelectedAnswer * 15, 233, PNT_SEL_Y + 18 + SelectedAnswer * 15,3);
	SetColor(S_WHITE);
	DrawRect(6, PNT_SEL_Y + 4 + SelectedAnswer * 15, 233, PNT_SEL_Y + 18 + SelectedAnswer * 15);
}

//2 > 현재 화자이름 설정
void SetCurrentName(int NameNumber)
{
	CurrentName = NameNumber;
}

//3 > 같을경우 계속 수행
int IfEqual(int Value1, int Value2, int ElseCount)
{
	if(Value1 == Variable[Value2])return 0;
	else return ElseCount;
}

//4 > 다를경우 계속 수행
int ElseEqual(int Value1, int Value2, int IfCount)
{
	if(Value1 != Variable[Value2])return 0;
	else return IfCount;
}

//5 > 표시 배경 이미지 교체
void SetBackground(int Layer, int ImageNumber)
{
	Background[Layer] = ImageNumber;
}

//6 > 표시 케릭터 이미지 교체
void SetChara(int Layer, int ImageNumber)
{
	BackChara[Layer] = ImageNumber;
}