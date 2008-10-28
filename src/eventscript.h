int SelectedAnswer = 0;		//선택지
int SecondSelect = 0;			//이벤트 내 메뉴 선택

int EventPointer = 0;		//실행중 이벤트라인 위치
int CurrentName = -1;		//현재 화자의 이름
int NamePosition = 0;		//현재 화자의 이름 표시 위치
int EffectFrame = 0;		//화면전환 효과 프레임 번호

void RunEventLine(int EventNumber)
{
	if(EventNumber < 0) return;
	if(EventObject[EventNumber].EventLoop == 0) return;

	switch(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++])
	{
		case -1:
			EventObject[EventNumber].LineCount = 0;
			EventObject[EventNumber].EventLoop = 0;
			RunningEventNumber = -1;
			break;

		case 0:		//대화 
			if(NextKey == SWAP_KEY_OK)
			{
				DrawMessages(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			}
			else
			{
				DrawMessages(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount--]);
			}
			NextKey = -1;
			break;

		case 1:		//선택지
			DrawQuestion(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],	EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			if(NextKey != SWAP_KEY_OK)
			{
				EventPointer -= 7;
			}
			NextKey = -1;
			break;

		case 2:		//스위치 조작					 :: 매개변수 2개
			SwitchOnOff(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 3:		//변수 조작						 :: 매개변수 3개
			SetVariable(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;

		case 7:		//주인공 맵 이동_지역 워프		 :: 매개변수 3개
			if(SecondSelect < MOVE_EFFECT_COUNT)
			{
				MoveMap(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount + 1], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount + 2]);
				EventObject[EventNumber].LineCount--;
			}
			else
			{
				MoveMap(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
				//워프후 이벤트 강제 종료 ▼ 워프(맵이동)시 버튼입력 대기가 되버려 삽입함
				EventObject[EventNumber].LineCount = 0;
				//EventObject[EventNumber].EventLoop = 0;
				RunningEventNumber = -1;
				ChangeMode(2);
				//워프후 이벤트 강제 종료 ▲
			}
			break;
		case 8:		//개체 위치 이동_좌표만			 :: 매개변수 2개
			MovePosition(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 9:		//개체 방향 전환				 :: 매개변수 2개
			SetDirection(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;
		case 11:	//조건분기_변수					 :: 매개변수 4개
			EventObject[EventNumber].LineCount += 4 + ConditionVariable(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+2], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+3]);
			break;
		case 12:	//조건분기_스위치				 :: 매개변수 2개
			EventObject[EventNumber].LineCount += 2 + ConditionSwitch(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount], EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1]);
			break;
		case 13:	//딜레이						 :: 매개변수 1개
			if(Delay(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount]) == 0)EventObject[EventNumber].LineCount--;
			else EventObject[EventNumber].LineCount++;
			break;
		default:
			EventObject[EventNumber].LineCount++;
			//EventObject[EventNumber].EventLoop = 0;
			//RunningEventNumber = -1;
	}
}

//조건부 변수 비교
int CheckVariable(int Value1, int Operation, int Value2)
{
	switch(Operation)
	{
		case 0:	// Data == Value
			if(Variable[Value1] < Variable[Value2])return 1;
			break;
		case 1:	// Data > Value
			if(Variable[Value1] <= Variable[Value2])return 1;
			break;
		case 2:	// Data >= Value
			if(Variable[Value1] == Variable[Value2])return 1;
			break;
		case 3:	// Data < Value
			if(Variable[Value1] >= Variable[Value2])return 1;
			break;
		case 4:	// Data <= Value
			if(Variable[Value1] > Variable[Value2])return 1;
			break;
	}
	return 0;
}

//맵 이동을 위한 화면 전환 처리
void ScreenEffect(int Type, int Count){
	
	switch(Type){
		//페이드인-페이드아웃
		case 0:
			switch(Count){
					case 0:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,3);break;
					case 1:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,2);break;
					case 2:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,1);break;
					case 3:
					case 4:
					case 5:
					case 6:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,0);break;
					case 7:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,1);break;
					case 8:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,2);break;
					case 9:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,3);break;
			}
			break;

		//눈 깜빡
		case 1:
			switch(Count){
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:	FillRect(MAP_POS_X1,MAP_POS_Y2,MAP_POS_X2,MAP_POS_Y2-MAP_POS_Y2/MOVE_EFFECT_COUNT*(Count+1));
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y1+MAP_POS_Y2/MOVE_EFFECT_COUNT*(Count+1));
						FillRect(MAP_POS_X2,MAP_POS_Y1,MAP_POS_X2-MAP_POS_X2/MOVE_EFFECT_COUNT*(Count+1),MAP_POS_Y2);
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X1+MAP_POS_X2/MOVE_EFFECT_COUNT*(Count+1),MAP_POS_Y2);
						break;

				case 5:
				case 6:
				case 7:
				case 8:
				case 9:	FillRect(MAP_POS_X1,MAP_POS_Y2,MAP_POS_X2,MAP_POS_Y2-MAP_POS_Y2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count));
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y1+MAP_POS_Y2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count));
						FillRect(MAP_POS_X2,MAP_POS_Y1,MAP_POS_X2-MAP_POS_X2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count),MAP_POS_Y2);
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X1+MAP_POS_X2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count),MAP_POS_Y2);
						break;
			}
			break;

		/*/두 장면 겹쳐 서서히 사라짐
		case 2:
			switch(Count){
				case 0:
				case 1: CopyImageEx(0, 20, bg[Imgnum], 3, 0, 0, 0);break;
				case 2:
				case 3: CopyImageEx(0, 20, bg[Imgnum], 3, 0, 0, 0);break;
				case 4:	
				case 5:
				case 6: CopyImageEx(0, 20, bg[Imgnum], 1, 0, 0, 0);break;
				case 7:
				case 8:
				case 9:	CopyImage(0, 20, bg[Imgnum]);break;
			}
			break;
		*/

	}
}

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

	CurrentName=0;//지우기
	if(CurrentName > -1)
	{
		switch(NamePosition)
		{
			case 0:
				//이름 배경 왼쪽
				//CopyImage(4, 252 - 14 * ((3)) -(P_MSG_Y), talk_name);
				//CopyImage(215, 260 - 14 * ((3)) -(P_MSG_Y), talk_ok);
				//이름 출력
				SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
				DrawStr(40, PosNameY + 5, Names[CurrentName]);
				break;
			case 1:
				//이름 배경 오른쪽
				//CopyImage(166, 252 - 14 * ((3)) -(P_MSG_Y), talk_name);
				//CopyImage(2, 260 - 14 * ((3)) -(P_MSG_Y), talk_ok);
				//이름 출력
				SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
				DrawStr(202, PosNameY + 5, Names[CurrentName]);
		}
	}else{
		CurrentName=0;//지우기
		//CopyImage(215, 260 - 14 * ((3)) -(P_MSG_Y), talk_ok);
	}

	
	//대화 출력
	SetColor(S_BLACK);
	FillRectEx(4, 274 - 14 * ((3)) -(P_MSG_Y), 285, 290 -(P_MSG_Y), 2);
	//CopyImage(0, 270 - 14 * ((3)) -(P_MSG_Y), talk_sup);
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	for(i = 0; i < ((4)); i++)
	{
		//CopyImage(0,  275 - 14 * i -(P_MSG_Y), talk_main);
		if(i < Length){
			StrSub(TempString, Messages[MessageNumber], i * 36, 36);
			DrawStr(7, 277 - (((3)) - i) * 14 -(P_MSG_Y), TempString);
		}
	}
	//CopyImage(0,  288 -(P_MSG_Y), talk_sub);
}

//1 > 선택지 출력
void DrawQuestion(int Value, int MsgCount, int Select1, int Select2, int Select3, int Select4)
{
int i;
string Temp;
	//선택지 내용
	SetColor(S_BLACK);
	FillRectEx(4, 288 - 14 * ((4)) -(P_MSG_Y), 285, 290 -(P_MSG_Y), 2);
	//CopyImage(0, 284 - 14 * ((4)) -(P_MSG_Y), talk_sup);
	//CopyImage(0,  275 - 14 * 2 -(P_MSG_Y), talk_main);
	//CopyImage(0,  275 - 14 * 1 -(P_MSG_Y), talk_main);
	//CopyImage(0,  275 -(P_MSG_Y), talk_main);
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

	//CopyImage(0,  288 -(P_MSG_Y), talk_sub);

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
	FillRectEx(6, 233 + SelectedAnswer * 14 -(P_MSG_Y), 233, 247 + SelectedAnswer * 14 -(P_MSG_Y), 3);
	//CopyImage(4, 232 + SelectedAnswer * 14 -(P_MSG_Y), talk_sel);
}

//2번 이벤트 라인{2,*,*} - 스위치조작
void SwitchOnOff(int SwitchNumber, int OnOffSet)
{
	Switch[SwitchNumber] = OnOffSet;
}

//3번 이벤트 라인{3,*,*,*} - 변수조작
void SetVariable(int VariableNumber, int Operation, int Value)
{
	int Temp;
	switch(Operation)
	{
		case 0:		// = Value
			Variable[VariableNumber] = Value;break;
		case 1:		// VariableNumber + Value
			Variable[VariableNumber] += Value;break;
		case 2:		// VariableNumber - Value
			Variable[VariableNumber] -= Value;break;
		case 3:		// VariableNumber * Value
			Variable[VariableNumber] *= Value;break;
		case 4:		// VariableNumber / Value
			Variable[VariableNumber] /= Value;break;
		case 5:		// VariableNumber % Value
			Variable[VariableNumber] %= Value;break;
		case 6:		// = VariableNumber
			Variable[VariableNumber] = Variable[Value];break;
		case 7:		// VariableNumber + VariableNumber
			Variable[VariableNumber] += Variable[Value];break;
		case 8:		// VariableNumber - VariableNumber
			Variable[VariableNumber] -= Variable[Value];break;
		case 9:		// VariableNumber * VariableNumber
			Variable[VariableNumber] *= Variable[Value];break;
		case 10:	// VariableNumber / VariableNumber
			Variable[VariableNumber] /= Variable[Value];break;
		case 11:	// VariableNumber % VariableNumber
			Variable[VariableNumber] %= Variable[Value];break;
		case 12:	// Swap(VariableNumber)
			Temp = Variable[VariableNumber];
			Variable[VariableNumber] = Variable[Value];
			Variable[Value] = Temp;
	}
}

//7번 이벤트 라인{7,*,*,*} - 주인공 맵 이동
void MoveMap(int MapNumber, int PositionX, int PositionY)
{
	string temp;

	DrawSubLayer();			//하위맵 출력
	DrawSupLayer(0);		//상위맵 0단계 출력
	DrawEventLayer();		//주인공 및 이벤트 출력
	DrawSupLayer(1);		//상위맵 1단계 출력

	SetColor(S_BLACK);		//Rand(0,127)//클리어 색상
	ScreenEffect(1, SecondSelect);

	if(SecondSelect == MOVE_EFFECT_COUNT / 2){
	
		EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x] = 0;
		Player.map = MapNumber;
		Player.x = PositionX;
		Player.y = PositionY;
		ApplyEventOnMap();
		EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x] = -1;
		MovingDirection = 0;							//워프 후 계속이동 됨을 방지

	}else if(SecondSelect == MOVE_EFFECT_COUNT){
		SecondSelect = 0;								//MOVE_EFFECT_COUNT에 대한 비교 값 초기화
		return;
	}

	SecondSelect++;										//이펙트 카운트 증가

}

//8번 이벤트 라인{8,*,*} - 케릭터 한칸 이동
void MovePosition(int Actor, int Direction)
{
	int TempX;
	int TempY;

	TempX = Area[Player.map].x_start + Player.x;
	TempY = Area[Player.map].y_start + Player.y;

	if(!ScrollMapX && !ScrollMapY && Actor == 0)	//Actor는 이동 주체, 0은 주인공, 1번부터 이벤트
	{
		switch (Direction){
			case SWAP_KEY_UP:
				if(Player.y > 0)
					if(SupLayer[TempY - 1][TempX] <= _SupChipMoveable || SupLayer[TempY - 1][TempX] > _SupChipWall)
						if(EventLayer[TempY - 1][TempX] == 0)
						{EventLayer[TempY][TempX] = 0;ScrollMapY=-15;EventLayer[TempY-1][TempX] = -1;Player.y--;}
				//Player.direction = 0;
				break;
			case SWAP_KEY_DOWN:
				if(Player.y < Area[Player.map].y_size - 1)
					if(SupLayer[TempY + 1][TempX] <= _SupChipMoveable || SupLayer[TempY + 1][TempX] > _SupChipWall)
						if(EventLayer[TempY + 1][TempX] == 0)
							{EventLayer[TempY][TempX] = 0;ScrollMapY=15;EventLayer[TempY+1][TempX] = -1;Player.y++;}
				//Player.direction = 2;
				break;
			case SWAP_KEY_LEFT:
				if(Player.x > 0)
					if(SupLayer[TempY][TempX - 1] <= _SupChipMoveable || SupLayer[TempY][TempX - 1] > _SupChipWall)
						if(EventLayer[TempY][TempX - 1] == 0)
							{EventLayer[TempY][TempX] = 0;ScrollMapX=-15;EventLayer[TempY][TempX-1] = -1;Player.x--;}
				//Player.direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				if(Player.x < Area[Player.map].x_size - 1)
					if(SupLayer[TempY][TempX + 1] <= _SupChipMoveable || SupLayer[TempY][TempX + 1] > _SupChipWall)
						if(EventLayer[TempY][TempX + 1] == 0)
							{EventLayer[TempY][TempX] = 0;ScrollMapX=15;EventLayer[TempY][TempX+1] = -1;Player.x++;}
				//Player.direction = 1;
		}
		//EventLayer[TempY][TempX] = -1;
	}
	else if(Actor > 0)
	{
		EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] = 0;
		switch (Direction){
			case SWAP_KEY_UP:
				if(EventObject[Actor - 1].y > 0)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start - 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start - 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start - 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] == 0)
							{EventObject[Actor - 1].y--;EventObject[Actor - 1].ScrollMapX=0;EventObject[Actor - 1].ScrollMapY=-15;}
				//EventObject[Actor - 1].direction = 0;
				break;
			case SWAP_KEY_DOWN:
				if(EventObject[Actor - 1].y < Area[EventObject[Actor - 1].map].y_size - 1)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start + 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start + 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start + 1][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] == 0)
							{EventObject[Actor - 1].y++;EventObject[Actor - 1].ScrollMapX=0;EventObject[Actor - 1].ScrollMapY=15;}
				//EventObject[Actor - 1].direction = 2;
				break;
			case SWAP_KEY_LEFT:
				if(EventObject[Actor - 1].x > 0)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start - 1] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start - 1] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start - 1] == 0)						
							{EventObject[Actor - 1].x--;EventObject[Actor - 1].ScrollMapX=-15;EventObject[Actor - 1].ScrollMapY=0;}
				//EventObject[Actor - 1].direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				if(EventObject[Actor - 1].x < Area[EventObject[Actor - 1].map].x_size - 1)
					if(SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start + 1] <= _SupChipMoveable || SupLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start + 1] > _SupChipWall)
						if(EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start + 1] == 0)
							{EventObject[Actor - 1].x++;EventObject[Actor - 1].ScrollMapX=15;EventObject[Actor - 1].ScrollMapY=0;}
				//EventObject[Actor - 1].direction = 1;
		}
		EventLayer[EventObject[Actor - 1].y + Area[EventObject[Actor - 1].map].y_start][EventObject[Actor - 1].x + Area[EventObject[Actor - 1].map].x_start] = Actor;
	}
}

//9번 이벤트 라인{9,*,*} - 주인공 방향 전환
void SetDirection(int Actor, int Direction)
{
	if(!ScrollMapX && !ScrollMapY && Actor == 0)
	{
		switch (Direction){
			case SWAP_KEY_UP:
				Player.direction = 0;
				break;
			case SWAP_KEY_DOWN:
				Player.direction = 2;
				break;
			case SWAP_KEY_LEFT:
				Player.direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				Player.direction = 1;
		}
	}
	else
	{
		switch (Direction){
			case SWAP_KEY_UP:
				EventObject[Actor - 1].direction = 0;
				break;
			case SWAP_KEY_DOWN:
				EventObject[Actor - 1].direction = 2;
				break;
			case SWAP_KEY_LEFT:
				EventObject[Actor - 1].direction = 3;
				break;
			case SWAP_KEY_RIGHT:
				EventObject[Actor - 1].direction = 1;
				break;
		}
	}
}

//11번 이벤트 라인{11,*,*,*,*} - 변수에 대한 조건분기
int ConditionVariable(int Value1, int Operation, int Value2, int ElseCount)
{
	if(CheckVariable(Value1, Operation, Value2) == 0)return ElseCount;
	else if(CheckVariable(Value1, Operation, Value2) == 1) return 0;
}

//12번 이벤트 라인{12,*} - 스위치에 대한 조건분기
int ConditionSwitch(int Value, int ElseCount)
{
	if(Switch[Value] == 0)return ElseCount;
	else if(Switch[Value] == 1) return 0;
}

//13번 이벤트 라인{13,*} - 딜레이
int Delay(int Value)
{
	if(Variable[Value] == 0)return 1;
	Variable[Value]--;
	return 0;
}