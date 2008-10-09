int NextKey = -1;			//시스템:입력받은 키번호

int SelectedAnswer = 0;		//선택지 번호
int EventPointer = 0;		//실행중 이벤트라인 위치
int CurrentName = 0;		//현재 화자의 이름
int NamePosition = 0;		//현재 화자의 이름 표시 위치

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
			DrawQuestion(EventLine[EventPointer++],	EventLine[EventPointer++], EventLine[EventPointer++], EventLine[EventPointer++], EventLine[EventPointer++], EventLine[EventPointer++]);
			if(NextKey != SWAP_KEY_OK)
			{
				EventPointer -= 7;
			}
			NextKey = -1;
			break;

		case 2:
			SetCurrentName(EventLine[EventPointer++], EventLine[EventPointer++]);
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
	int PosNameY;
	//한줄:반각문자18자(전각문자9자)
	Length = StrLen(Messages[MessageNumber]) / 36 + 1;

	//이름 표시위치 계산
	PosNameY = 252- 14 * ((3)) -(P_MSG_Y);

	if(CurrentName > -1)
	{
		switch(NamePosition)
		{
			case 0:
				//이름 배경 왼쪽
				CopyImage(4, 252 - 14 * ((3)) -(P_MSG_Y), talk_name);
				CopyImage(215, 260 - 14 * ((3)) -(P_MSG_Y), talk_ok);
				//이름 출력
				SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
				DrawStr(40, PosNameY + 5, Names[CurrentName]);
				break;
			case 1:
				//이름 배경 오른쪽
				CopyImage(166, 252 - 14 * ((3)) -(P_MSG_Y), talk_name);
				CopyImage(2, 260 - 14 * ((3)) -(P_MSG_Y), talk_ok);
				//이름 출력
				SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
				DrawStr(202, PosNameY + 5, Names[CurrentName]);
		}
	}else{
		CopyImage(215, 260 - 14 * ((3)) -(P_MSG_Y), talk_ok);
	}
	
	//대화 출력
	SetColor(S_BLACK);
	FillRectEx(4, 274 - 14 * ((3)) -(P_MSG_Y), 285, 290 -(P_MSG_Y), 2);
	CopyImage(0, 270 - 14 * ((3)) -(P_MSG_Y), talk_sup);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	for(i = 0; i < ((4)); i++)
	{
		CopyImage(0,  275 - 14 * i -(P_MSG_Y), talk_main);
		if(i < Length){
			StrSub(TempString, Messages[MessageNumber], i * 36, 36);
			DrawStr(7, 277 - (((3)) - i) * 14 -(P_MSG_Y), TempString);
		}
	}
	CopyImage(0,  288 -(P_MSG_Y), talk_sub);
}

//1 > 선택지 출력
void DrawQuestion(int Value, int MsgCount, int Select1, int Select2, int Select3, int Select4)
{
int i;
string Temp;
	//선택지 내용
	SetColor(S_BLACK);
	FillRectEx(4, 288 - 14 * ((4)) -(P_MSG_Y), 285, 290 -(P_MSG_Y), 2);
	CopyImage(0, 284 - 14 * ((4)) -(P_MSG_Y), talk_sup);
	CopyImage(0,  275 - 14 * 2 -(P_MSG_Y), talk_main);
	CopyImage(0,  275 - 14 * 1 -(P_MSG_Y), talk_main);
	CopyImage(0,  275 -(P_MSG_Y), talk_main);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);

	for(i = 0; i < MsgCount; i++){
		switch(i+1){
			case 4: Temp = SelectMessages[Select4];break;
			case 3: Temp = SelectMessages[Select3];break;
			case 2: Temp = SelectMessages[Select2];break;
			case 1: Temp = SelectMessages[Select1];break;
		}
		DrawStr(120, 235 + i * 14 -(P_MSG_Y), Temp);
	}
	/*
	switch(MsgCount){
		case 4:
			DrawStr(120, 277 - (MsgCount - 4) * 14 -(P_MSG_Y), SelectMessages[Select4]);
		case 3:
		
			DrawStr(120, 277 - (MsgCount - 3) * 14 -(P_MSG_Y), SelectMessages[Select3]);
		case 2:
		
			DrawStr(120, 277 - (MsgCount - 2) * 14 -(P_MSG_Y), SelectMessages[Select2]);
		case 1:
			DrawStr(120, 277 - (MsgCount - 1) * 14 -(P_MSG_Y), SelectMessages[Select1]);
	}
	*/
	CopyImage(0,  288 -(P_MSG_Y), talk_sub);

	//키입력
	if(NextKey == SWAP_KEY_DOWN)
	{
		SelectedAnswer = (SelectedAnswer + 1) % MsgCount;
	}
	else if(NextKey == SWAP_KEY_UP)
	{
		SelectedAnswer = (SelectedAnswer + MsgCount - 1) % MsgCount;
	}
	else if(NextKey == SWAP_KEY_OK)
	{
		Variable[Value] = SelectedAnswer;
		SelectedAnswer = 0;
		return;
	}

	//선택항목 표시
	SetColor(S_WHITE);
	//FillRectEx(6, 277 + 12 - (MsgCount - SelectedAnswer) * 14 -(P_MSG_Y), 233, 277 + 26 - (MsgCount - SelectedAnswer) * 14 -(P_MSG_Y), 3);
	//CopyImage(4, 277 + 11 - (MsgCount - SelectedAnswer) * 14 -(P_MSG_Y), talk_sel);
	FillRectEx(6, 233 + SelectedAnswer * 14 -(P_MSG_Y), 233, 247 + SelectedAnswer * 14 -(P_MSG_Y), 3);
	CopyImage(4, 232 + SelectedAnswer * 14 -(P_MSG_Y), talk_sel);
}

//2 > 현재 화자이름과 위치 설정
void SetCurrentName(int NameNumber, int Position)
{
	CurrentName = NameNumber;	//-1:없음
	NamePosition = Position;	//0:좌, 1:우
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

//7 > 오늘 날짜 설정
void SetDate(int Year, int Month, int Day)
{
	Now.Today.Year	= Year;
	Now.Today.Month	= Month;
	Now.Today.Day		= Day;
	Now.Today.Week	= GetWeek(Year, Month, Day);
}

//8 > 현재 시간 설정
void SetTime(int Hour, int Minute)
{
	Now.Today.Hour	= Hour;
	Now.Today.Minute	= Minute;
}

//9 > 현재 날씨 설정
void SetWeather(int Weather)
{
	Now.Weather = Weather;
}

//10 > 날짜/시간 지남
void PassTime(int Element, int Count)
{
	int TempCount;

	switch(Element)
	{
		//년 단위
		case 0:
			Now.Today.Year		 += Count;
			break;
		//월 단위 1 ~ 12 사용 권장
		case 1:
			Now.Today.Month		+= Count;
			Now.Today.Year		+= (Now.Today.Month - 1) / 12;
			Now.Today.Month		= (Now.Today.Month - 1) % 12 + 1;
			break;
		//일 단위 1 ~ 30 밖에 안됨
		case 2:
			Now.Today.Day		+= Count;
			TempCount			+= (Now.Today.Day - 1) / MONTH[Now.Today.Month];
			Now.Today.Day		= (Now.Today.Month - 1) % MONTH[Now.Today.Month] + 1;
			Now.Today.Month		+= TempCount;
			Now.Today.Year		+= (Now.Today.Month - 1) / 12;
			Now.Today.Month		= (Now.Today.Month - 1) % 12 + 1;
			break;
		//시간 : 일수에 관여 안함
		case 3:
			Now.Today.Hour		+= Count;
			Now.Today.Hour		%= 24;
			break;
		//분
		case 4:
			Now.Today.Minute	+= Count;
			Now.Today.Hour		+= Now.Today.Month / 60;
			Now.Today.Minute	%= 60;
			break;
	}
}

//11 > 