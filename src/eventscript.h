int SelectedAnswer = 0;				//선택지
int EventMode = 0;					//이벤트 모드
int SelectedStation = 0;			//이벤트 내 선택 장소
int SecondSelect = 0;				//이벤트 내 메뉴 선택

int EventPointer = 0;				//실행중 이벤트라인 위치
int CurrentName = -1;				//현재 화자의 이름
int NamePosition = 0;				//현재 화자의 이름 표시 위치
int Background[2] = {-1, -1};		//배경
int BackChara[3] = {-1, -1, -1};	//케릭터

int EffectFrame = 0;				//화면전환 효과 프레임 번호

void RunEventLine(int EventNumber){

	if(EventNumber < 0) return;
	if(EventObject[EventNumber].EventLoop == 0) return;

	switch(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++])
	{
		case -1:	//이벤트 종료	 				 :: 매개변수 없음
			EventObject[EventNumber].LineCount = 0;
			EventObject[EventNumber].EventLoop = 0;
			RunningEventNumber = -1;
			
			break;

		case 0:		//대화 							 :: 매개변수 1개
			if(NextKey == SWAP_KEY_OK && EventMode == 2){
				DrawMessages(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
				EffectFrame = 0;
				SelectedAnswer = 0;
				SecondSelect = 0;
				EventMode = 0;
			}else{
				DrawMessages(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount--]);

				//자동 스킵 옵션 설정한 경우
				if(OptionAutoSkip){
					if(EffectFrame > SKIP_COUNT){
						EventObject[EventNumber].LineCount += 2;
						EffectFrame = 0;
						SelectedAnswer = 0;
						SecondSelect = 0;
						EventMode = 0;
					}
				}
			}
			NextKey = -1;
			break;

		case 1:		//선택지						 :: 매개변수 6개
			DrawQuestion(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			if(NextKey != SWAP_KEY_OK){
				EventPointer -= 7;
			}
			NextKey = -1;
			break;

		case 2:		//화자이름 설정					 :: 매개변수 2개
			SetCurrentName(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						   EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;

		case 3:		//조건분기_변수 if(s==v[vn])	 :: 매개변수 3개
			EventObject[EventNumber].LineCount += 3 + IfEqual(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount],
															  EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1],
															  EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+2]);
			break;

		case 4:		//조건분기_변수 if(s!=v[vn])	 :: 매개변수 3개
			EventObject[EventNumber].LineCount += 3 + ElseEqual(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount],
															    EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+1],
															    EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount+2]);
			break;

		case 5:		//배경화면 교체					 :: 매개변수 3개
			SetBackground(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						  EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						  EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			if(EffectFrame < MOVE_EFFECT_COUNT){
				EventObject[EventNumber].LineCount -= 4;
			}else{
				EffectFrame = 0;
			}
			break;

		case 6:		//케릭터 교체					 :: 매개변수 2개
			SetChara(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
					 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;

		case 7:		//주인공 맵 이동_지역 워프		 :: 매개변수 3개
			if(SecondSelect < MOVE_EFFECT_COUNT){
				MoveMap(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount],
						EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount + 1],
						EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount + 2]);
				EventObject[EventNumber].LineCount--;
			}else{
				MoveMap(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
				//SecondSelect = 0;								//MOVE_EFFECT_COUNT에 대한 비교 값 초기화
				//워프후 이벤트 강제 종료 ▼ 워프(맵이동)시 버튼입력 대기가 되버려 삽입함
				//EventObject[EventNumber].LineCount = 0;
				//EventObject[EventNumber].EventLoop = 0;
				//RunningEventNumber = -1;
				//ChangeMode(2);
				//워프후 이벤트 강제 종료 ▲
			}
			break;

		case 8:		//개체 위치 이동_좌표만			 :: 매개변수 2개
			MovePosition(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;

		case 9:		//개체 방향 전환				 :: 매개변수 2개
			SetDirection(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++],
						 EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;

		case 10:	//딜레이						 :: 매개변수 1개
			if(Delay(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount]))EventObject[EventNumber].LineCount--;
			else EventObject[EventNumber].LineCount++;
			break;

		case 11:	//배경음						 :: 매개변수 1개
			SetBGM(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount++]);
			break;

		case 30:	//지하철						 :: 매개변수 없음
			if(!Subway(EventNumber))EventObject[EventNumber].LineCount--;
			NextKey = -1;
			break;

		case 31:	//항공기						 :: 매개변수 없음
			if(!Airport(EventNumber))EventObject[EventNumber].LineCount--;
			NextKey = -1;
			break;

		case 32:	//챕터표시
			if(DrawChapter(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount]))EventObject[EventNumber].LineCount--;
			else EventObject[EventNumber].LineCount++;
			break;

		case 33:	//아이캐치
			if(DrawEyeCatch(EventLine[EventObject[EventNumber].EventPage + EventObject[EventNumber].LineCount]))EventObject[EventNumber].LineCount--;
			else EventObject[EventNumber].LineCount++;
			break;

		case 99:	//에러처리						 :: 매개변수 없음
			EventObject[EventNumber].LineCount++;
			break;
	}
}

//맵 이동을 위한 화면 전환 처리
void ScreenEffect(int Type, int Count, int Imgnum){
	switch(Type){
		case 0:			//페이드인-페이드아웃
			SetColor(S_BLACK);
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

		case 1:			//눈 깜빡
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

		case 2:			//두 장면 겹쳐 서서히 사라짐
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
	}
}

//0 > 대화창 출력
void DrawMessages(int MessageNumber){
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
	
		if(i == SelectedAnswer){
			StrSub(TempString, Messages[MessageNumber], i * 36, SecondSelect);
			DrawStr(7, 277 - (((3)) - i) * 14 -(P_MSG_Y), TempString);
		}if(i < SelectedAnswer){				
			StrSub(TempString, Messages[MessageNumber], i * 36, 36);
			DrawStr(7, 277 - (((3)) - i) * 14 -(P_MSG_Y), TempString);
		}
	}
	CopyImage(0,  288 -(P_MSG_Y), talk_sub);


	switch(EventMode){
		case 0:
			if(OptionAutoSkip){
				EventMode = 2;
				SecondSelect = 36;
				SelectedAnswer = Length - 1;
			}else{
				EventMode = 1;
			}
			break;
	
		case 1:
			if(SelectedAnswer < Length)SecondSelect++;

			if(SecondSelect == 36){
				SecondSelect = SecondSelect % 36;
				if(SelectedAnswer < Length){
					SelectedAnswer++;
				}else{
					EventMode = 1;
				}
			}
		
			if((StrLen(Messages[MessageNumber]) % 36 == SecondSelect && SelectedAnswer == Length - 1) || (NextKey == SWAP_KEY_OK)){
				SecondSelect = 36;
				SelectedAnswer = Length - 1;
				EventMode = 2;
			}
			break;
		case 2:
			EffectFrame++;
			break;
	}

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
	if(Value2 == Variable[Value1])return 0;
	else return ElseCount;
}

//4 > 다를경우 계속 수행
int ElseEqual(int Value1, int Value2, int IfCount)
{
	if(Value2 != Variable[Value1])return 0;
	else return IfCount;
}

//5 > 표시 배경 이미지 교체
void SetBackground(int Layer, int ImageNumber, int Effect)
{
	if(EffectFrame == MOVE_EFFECT_COUNT / 2){
		Background[Layer] = ImageNumber;
	}else if (EffectFrame > MOVE_EFFECT_COUNT){        
		return;
	}
	ScreenEffect(Effect, EffectFrame++, ImageNumber);
}

//6 > 표시 케릭터 이미지 교체
void SetChara(int Layer, int ImageNumber)
{
	BackChara[Layer] = ImageNumber;
}

//7번 이벤트 라인{7,*,*,*} - 주인공 맵 이동
void MoveMap(int MapNumber, int PositionX, int PositionY)
{
	string temp;

	//DrawSubLayer();			//하위맵 출력
	//DrawSupLayer(0);		//상위맵 0단계 출력
	//DrawEventLayer();		//주인공 및 이벤트 출력
	//DrawSupLayer(1);		//상위맵 1단계 출력

	SetColor(S_BLACK);		//Rand(0,127)//클리어 색상
	ScreenEffect(1, SecondSelect, 0);

	if(SecondSelect == MOVE_EFFECT_COUNT / 2){
	
		EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x] = 0;
		Player.map = MapNumber;
		Player.x = PositionX;
		Player.y = PositionY;
		ApplyEventOnMap();
		EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x] = -1;
		MovingDirection = 0;							//워프 후 계속이동 됨을 방지
		//SetBGM(Area[MapNumber].BGM);					//각마을 배경음 설정

	}else if(SecondSelect == MOVE_EFFECT_COUNT){
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

//10번 이벤트 라인{13,*} - 딜레이
int Delay(int Value){
	
	switch(EventMode){
		case 0:
			SecondSelect = Value;
			EventMode = 1;
			break;
		case 1:
			SecondSelect--;
			if(SecondSelect < 0){
				SecondSelect = 0;
				EventMode = 0;
				return 0;
			}
			break;
	}
	return 1;		//반복
}

//11번 배경음 재생
void SetBGM(int MusicNumber){
	PlayMusic(MusicNumber);
}

//30번>> 지하철 일본 5개 도시
int Subway(int EventNumber){
	int NowMap, SelMap;
	int i, Temp;

	//검은 바탕
	SetColor(S_BLACK);
	FillRectEx(0, 62, 240, 218, 1);

	//테두리
	CopyImage(0, 60, int_border);
	CopyImage(-3, 55, eve_label_subway);
	CopyImageEx(240, 220, int_border, 0, 0, 0, 2);

	//지도
	CopyImage(0, 75, eve_airmap);

	//구간 출력
	SetColor(S_BLACK);	
	for(i = 0; i < 21; i++){	
		DrawRect(SubwayStation[i].X-1, SubwayStation[i].Y-1, SubwayStation[i].X+4, SubwayStation[i].Y +4);
	}

	switch(SelectedAnswer){
		case 2:
			switch(SelectedStation){
				case 0:		MoveMap(0, 4, 13);break;	//도쿄
				case 1:		MoveMap(1, 6, 8);break;	//오사카
				case 2:		MoveMap(2, 17, 9);break;	//교토
				case 3:		MoveMap(3, 6, 5);break;	//후쿠오카
				case 4:		MoveMap(4, 15, 2);break;		//오키나와
				default:
					SecondSelect++;

			}
			if(SecondSelect == MOVE_EFFECT_COUNT){
				EventMode = 0;							//이벤트 모드 초기화
				SecondSelect = 0;						//MOVE_EFFECT_COUNT에 대한 비교 값 초기화
				SelectedAnswer = 0;
				SelectedStation = 0;
				//EventObject[EventNumber].LineCount = 0;	//실행 이벤트 위치 초기화
				//EventObject[EventNumber].EventLoop = 0;
				//RunningEventNumber = -1;				//실행 이벤트 종료
				//ChangeMode(2);
				return 1;
			}
			break;

		//이동효과 - 지하철
		case 1:
			if(SecondSelect > 0){
				SelectedAnswer = 2;
			}else{
				switch(Player.map){
					case 0:		NowMap = 12;break;
					case 1:		NowMap = 4;break;
					case 2:		NowMap = 5;break;
					case 3:		NowMap = 20;break;
					case 4:		NowMap = 0;break;
				}
				switch(SelectedStation){
					case 0:		SelMap = 12;break;
					case 1:		SelMap = 4;break;
					case 2:		SelMap = 5;break;
					case 3:		SelMap = 20;break;
					case 4:		SelMap = 0;break;
				}

				//이동구간 출력
				if(NowMap < SelMap){
					Temp = SelMap - (NowMap - SelMap) * (SecondSelect) / 50;
					SetColor(S_RED);
					for(i = NowMap; i <= Temp; i++){
						FillRect(SubwayStation[i].X, SubwayStation[i].Y, SubwayStation[i].X + 3, SubwayStation[i].Y + 3);
					}
				}else{
					Temp = SelMap + (SelMap - NowMap) * (SecondSelect) / 50;				
					SetColor(S_RED);
					for(i = NowMap; i >= Temp; i--){
						FillRect(SubwayStation[i].X, SubwayStation[i].Y, SubwayStation[i].X + 3, SubwayStation[i].Y + 3);
					}
				}
			}
			//프레임 증가
			SecondSelect++;
			break;

		case 0:	
			switch(EventMode){
				case 0:						//이벤트 초기화
					SecondSelect = -60;			//이펙트를 위해 -100
					SelectedStation = Player.map;	//현재 위치 적용
					EventMode = 1;

				case 1:						//목적지 선택
					switch(NextKey){
						case SWAP_KEY_OK:		//목적지 결정
							if(SelectedStation == Player.map){
								EventMode = 0;
								return 1;
							}else{
								SelectedAnswer = 1;
							}break;
						case SWAP_KEY_LEFT:		//좌선택
							SelectedStation = (SelectedStation + 4) % 5;break;
						case SWAP_KEY_RIGHT:	//우선택
							SelectedStation = (SelectedStation + 1) % 5;break;
						case SWAP_KEY_CLR:		//목적지 취소
							EventMode = 0;			//이벤트 모드 초기화
							return 1;
							break;
					}//END SWITCH[NextKey]
					break;

				case 2:						//확인
					break;
			}//END SWITCH[EventMode]
			break;
	}//END SWITCH[SelectedAnswer]

	if(SelectedAnswer != 2){
		//선택한 목적지
		switch(SelectedStation){
			case 0:		CopyImage(SubwayStation[12].X, SubwayStation[12].Y, int_select_map);break;
			case 1:		CopyImage(SubwayStation[4].X, SubwayStation[4].Y, int_select_map);break;
			case 2:		CopyImage(SubwayStation[5].X, SubwayStation[5].Y, int_select_map);break;
			case 3:		CopyImage(SubwayStation[20].X, SubwayStation[20].Y, int_select_map);break;
			case 4:		CopyImage(SubwayStation[0].X, SubwayStation[0].Y, int_select_map);break;
		}

		//목적지 이름
		CopyImage(72, 67, int_label);
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
		DrawStr(120, 74, AreaName[Area[SelectedStation].name]);
	}
	return 0;

}

//31번>> 항공기 일본의 도쿄 - 한국의 서울
int Airport(int EventNumber){

	//검은 바탕
	SetColor(S_BLACK);
	FillRectEx(0, 62, 240, 218, 1);

	//테두리
	CopyImage(0, 60, int_border);
	CopyImage(-3, 55, eve_label_airport);
	CopyImageEx(240, 220, int_border, 0, 0, 0, 2);

	//지도
	CopyImage(0, 75, eve_airmap);

	switch(SelectedAnswer){
		case 2:
			switch(SelectedStation){
				case 0:					//도쿄
					MoveMap(0, 16, 6);
					break;
				case 5:					//서울
					MoveMap(5, 3, 6);
					break;
				default:
					SecondSelect++;

			}
			if(SecondSelect == MOVE_EFFECT_COUNT){
				EventMode = 0;							//이벤트 모드 초기화
				SecondSelect = 0;						//MOVE_EFFECT_COUNT에 대한 비교 값 초기화
				SelectedAnswer = 0;
				SelectedStation = 0;
				//EventObject[EventNumber].LineCount = 0;	//실행 이벤트 위치 초기화
				//EventObject[EventNumber].EventLoop = 0;
				//RunningEventNumber = -1;				//실행 이벤트 종료
				//ChangeMode(2);
				return 1;
			}
			break;
		
		//이동효과 - 비행기
		case 1:
			switch(SelectedStation){
				case 0:					//도쿄로
					CopyImage(T1X + ((T1X-T6X) / 50 * SecondSelect), T1Y + ((T1Y-T6Y) / 50 * SecondSelect), airport[1]);
					break;
				case 5:					//서울로
					CopyImage(T6X - ((T1X-T6X) / 50 * SecondSelect), T6Y - ((T1Y-T6Y) / 50 * SecondSelect), airport[0]);
					break;
			}
			SecondSelect++;
			if(SecondSelect >= 0){
				SelectedAnswer = 2;
			}
			break;

		case 0:	
			switch(EventMode){
				case 0:						//이벤트 초기화
					SecondSelect = -50;
					SelectedStation = Player.map;	//현재 위치 적용
					EventMode = 1;

				case 1:						//목적지 선택
					switch(NextKey){
						case SWAP_KEY_OK:		//목적지 결정
							if(SelectedStation == Player.map){
								EventMode = 0;
								return 1;
							}else{
								SelectedAnswer = 1;
							}
							break;

						case SWAP_KEY_LEFT:		//좌선택
						case SWAP_KEY_RIGHT:	//우선택
							SelectedStation = (SelectedStation + 1) % 2 * 5;
							break;

						case SWAP_KEY_CLR:		//목적지 취소
							EventMode = 0;			//이벤트 모드 초기화
							return 1;
							break;
					}//END SWITCH[NextKey]
					break;

				case 2:						//확인
					break;
			}//END SWITCH[EventMode]
			break;
	}//END SWITCH[SelectedAnswer]
	
	if(SelectedAnswer != 2){
		//선택한 목적지
		switch(SelectedStation){
			case 0:
				CopyImage(T1X, T1Y, int_select_map);
				break;
			case 5:
				CopyImage(T6X, T6Y, int_select_map);
				break;
		}

		//목적지 이름
		CopyImage(72, 67, int_label);
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
		DrawStr(120, 74, AreaName[Area[SelectedStation].name]);
	}

	return 0;

}

//32번 이벤트 라인{32,*} - 챕터표시
int DrawChapter(int ChapterNumber){
string temp;
	switch(EventMode){
		case 0:
			SecondSelect = MAX_CHAPTER_FRAME;
			EventMode = 1;
			break;
		case 1:
			SecondSelect--;

			SetColor(S_WHITE);
			FillRect(0, 20, 240, 210);	
			CopyImage(40, 180, epilogue[ChapterNumber]);

			if(SecondSelect < 0){
				SecondSelect = 0;
				EventMode = 0;
				return 0;
			}

			SetColor(S_BLACK);
			if(SecondSelect + 10 > MAX_CHAPTER_FRAME)
				FillRectEx(0, 20, 240, 210, (MAX_CHAPTER_FRAME - SecondSelect) / 3);
			else if(SecondSelect < 10)
				FillRectEx(0, 20, 240, 210, SecondSelect / 3);

			break;
	}
	return 1;		//반복
}

//33번 이벤트 라인{33,*} - DrawEyeCatch
int DrawEyeCatch(int Type){
	
	switch(EventMode){
		case 0:
			SecondSelect = MAX_EYE_FRAME;
			SelectedAnswer = 1;
			EventMode = 1;
			break;
		case 1:
			SecondSelect--;

			SetColor(S_BLACK);
			FillRect(0, 20, 240, 220);

			SetFontType(S_FONT_HUGE, S_PINK, S_BLACK, S_ALIGN_CENTER);
			DrawStr(100+Rand(0,50), 90+Rand(0,50), "★");
			DrawStr(100+Rand(0,50), 90+Rand(0,50), "★");
			SetFontType(S_FONT_HUGE, S_VIOLET, S_BLACK, S_ALIGN_CENTER);
			DrawStr(100+Rand(0,50), 90+Rand(0,50), "★");
			DrawStr(100+Rand(0,50), 90+Rand(0,50), "★");
			SetFontType(S_FONT_HUGE, S_RED, S_BLACK, S_ALIGN_CENTER);
			DrawStr(100+Rand(0,50), 90+Rand(0,50), "★");

			SetColor(S_DGRAY);
			DrawHLine((MAX_EYE_FRAME - SecondSelect) * 5 + 10, (MAX_EYE_FRAME - SecondSelect) * 5 + 15, 179);
			DrawHLine((MAX_EYE_FRAME - SecondSelect) * 5 -  5, (MAX_EYE_FRAME - SecondSelect) * 5 + 16, 180);
			DrawHLine((MAX_EYE_FRAME - SecondSelect) * 5 + 10, (MAX_EYE_FRAME - SecondSelect) * 5 + 15, 181);
	
		/*	
			switch(SelectedAnswer){
				case 1:
					DrawStr(120, 150, "- LOVE -");
					break;
				case 2:
					DrawStr(120, 150, "- FOREVER -");
					break;
				case 3:
					
					break;
			}
		*/SetFontType(S_FONT_LARGE, S_JADE, S_BLACK, S_ALIGN_CENTER);DrawStr(120, 160, "Coutinue...");
			SetColor(S_BLACK);
			if(SecondSelect + 10 > MAX_EYE_FRAME)
				FillRectEx(0, 20, 240, 210, (MAX_EYE_FRAME - SecondSelect) / 3);
			else if(SecondSelect < 10)
				FillRectEx(0, 20, 240, 210, SecondSelect / 3);

			if(SecondSelect < 0){
				SecondSelect = 0;
				SelectedAnswer = 0;
				EventMode = 0;
				return 0;
			}
			break;
	}
	return 1;		//반복
}