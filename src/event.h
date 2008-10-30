int Switch[10];
int Variable[10];

struct EventObject{
	//기본정보
	int NameNumber;		//이름목록의 번호
	int	x, y;
	int direction;
	int graphic;		//-1:그래픽없음,>=0:번호에 해당되는 그래픽
	int map;

	//출력정보
	int frame;
	int ScrollMapX;
	int ScrollMapY;

	//이동타입
	int MoveType;		//0:정지,1:랜덤

	//발생조건
	int Switch;			//비교할 스위치 번호(Switch[Switch]의 값이 On(=1)인 경우에 실행)
	int Variable;		//비교할 변수 번호
	int Operation;		//변수 비교 기호
	int VariableValue;	//이벤트가 원하는 변수 값

	//이벤트 제어 변수
	int EventLoop;		//명령 반복 횟수
	int EventPage;		//수행할 명령 목록
	int LineCount;		//수행중인 명령 위치
}EventObject[MAX_EVENT_COUNT];

int EventLine[] = { 
/*00*/ 31, -1,		//공항이벤트
/*02*/  2, -1,  0,/**/  0,  0,/**/  0,  1,		//도쿄타워 테스트
/*09*/
-1

};


//초기 이벤트 설정
void SetEvent(){

	////이동관련 이벤트////

	////건물관련 이벤트////
	//도쿄.공항
	EventObject[0].graphic = -1;		//테스트 코드
	EventObject[0].map = 0;				//테스트 코드
	EventObject[0].x = 11;				//테스트 코드
	EventObject[0].y = 3;				//테스트 코드
	EventObject[0].EventLoop = 0;		//테스트 코드
	EventObject[0].EventPage = 0;		//테스트 코드
	EventObject[0].LineCount = 0;		//테스트 코드
	EventObject[0].MoveType = 0;		//정지상태

	//서울.공항
	EventObject[1].graphic = -1;		//테스트 코드
	EventObject[1].map = 5;				//테스트 코드
	EventObject[1].x = 16;				//테스트 코드
	EventObject[1].y = 3;				//테스트 코드
	EventObject[1].EventLoop = 0;		//테스트 코드
	EventObject[1].EventPage = 0;		//테스트 코드
	EventObject[1].LineCount = 0;		//테스트 코드
	EventObject[1].MoveType = 0;		//정지상태

	//도쿄.도쿄타워
	EventObject[2].graphic = -1;		//테스트 코드
	EventObject[2].map = 0;				//테스트 코드
	EventObject[2].x = 9;				//테스트 코드
	EventObject[2].y = 10;				//테스트 코드
	EventObject[2].EventLoop = 0;		//테스트 코드
	EventObject[2].EventPage = 2;		//테스트 코드
	EventObject[2].LineCount = 0;		//테스트 코드
	EventObject[2].MoveType = 0;		//정지상태

	ApplyEventOnMap();
}

void ApplyEventOnMap(){
	int Actor;
	//맵상에 이벤트 적용
	for(Actor = 0; Actor < MAX_EVENT_COUNT; Actor++)
		if(Player.map == EventObject[Actor].map)
			EventLayer[EventObject[Actor].y + Area[EventObject[Actor].map].y_start][EventObject[Actor].x + Area[EventObject[Actor].map].x_start] = Actor+1;
		else
			EventLayer[EventObject[Actor].y + Area[EventObject[Actor].map].y_start][EventObject[Actor].x + Area[EventObject[Actor].map].x_start] = 0;
}

void MoveEventRandom(int EventNumber)
{
	if(EventObject[EventNumber].map == Player.map){
		switch(Rand(0, 20))
		{
			case 0:
				SetDirection(EventNumber + 1, SWAP_KEY_RIGHT);
				MovePosition(EventNumber + 1, SWAP_KEY_RIGHT);break;
			case 1:
				SetDirection(EventNumber + 1, SWAP_KEY_LEFT);
				MovePosition(EventNumber + 1, SWAP_KEY_LEFT);break;
			case 2:
				SetDirection(EventNumber + 1, SWAP_KEY_UP);
				MovePosition(EventNumber + 1, SWAP_KEY_UP);break;
			case 3:
				SetDirection(EventNumber + 1, SWAP_KEY_DOWN);
				MovePosition(EventNumber + 1, SWAP_KEY_DOWN);			
		}
	}
}

//맵 스크롤
void EventScroll(int EventNumber){
	if(EventObject[EventNumber].ScrollMapX)
	{
		if(EventObject[EventNumber].ScrollMapX>0)EventObject[EventNumber].ScrollMapX-=3;
		else EventObject[EventNumber].ScrollMapX+=3;
	}
	else if(EventObject[EventNumber].ScrollMapY)
	{
		if(EventObject[EventNumber].ScrollMapY>0)EventObject[EventNumber].ScrollMapY-=3;
		else EventObject[EventNumber].ScrollMapY+=3;
	}
}


void DrawEvent(int EventNumber){
string te;
	if(EventObject[EventNumber].ScrollMapX || EventObject[EventNumber].ScrollMapY)
		EventObject[EventNumber].frame = (EventObject[EventNumber].frame+1) % 16;	//MOVE
	else
		EventObject[EventNumber].frame = (EventObject[EventNumber].frame) % 16;		//NOT MOVE
	if(EventObject[EventNumber].x >= 0 && EventObject[EventNumber].y >= 0 && EventObject[EventNumber].x < Area[Player.map].x_size && EventObject[EventNumber].y < Area[Player.map].y_size)
		CopyImage((EventObject[EventNumber].x - Player.x) * 16 + _CenterPositionX + ScrollMapX - EventObject[EventNumber].ScrollMapX, (EventObject[EventNumber].y - Player.y) * 16 + _CenterPositionY + ScrollMapY - EventObject[EventNumber].ScrollMapY + _TopSize, chara[EventObject[EventNumber].graphic * 16 + EventObject[EventNumber].direction*4 + EventObject[EventNumber].frame/4]); //4패턴
}

//이벤트 맵 그리기 - 주인공과 같은 레이어 출력
void DrawEventLayer(){
	int x, y;
	int TempX, TempY;

	TempX = Area[Player.map].x_start + Player.x;
	TempY = Area[Player.map].y_start + Player.y;

	for(y = -7; y < 9;y++)
	{
		for(x = -8; x < 9;x++)
		{
			//맵 안에 위치한 이벤트만
			if(Player.x + x < Area[Player.map].x_size && Player.y + y < Area[Player.map].y_size && Player.x + x >= 0 && Player.y + y >= 0)	//다른맵에서의 이벤트 출력 불량으로인제거-지우면 또 맵 끝에서 오류남
				if(EventLayer[TempY + y][TempX + x] > 0)
				{
					if(EventObject[EventLayer[TempY + y][TempX + x]-1].map == Player.map && EventObject[EventLayer[TempY + y][TempX + x]-1].graphic >= 0){
						EventScroll(EventLayer[TempY + y][TempX + x]-1);
						DrawEvent(EventLayer[TempY + y][TempX + x]-1);
					}
				}
		}
		if(y == 0)DrawPlayer();	//주인공 출력
	}
}

int SerchEvent()
{
	switch(Player.direction)
	{
		case 0:	//상
			return EventLayer[Area[Player.map].y_start + Player.y - 1][Area[Player.map].x_start + Player.x];
		case 2:	//하
			return EventLayer[Area[Player.map].y_start + Player.y + 1][Area[Player.map].x_start + Player.x];
		case 3:	//좌
			return EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x - 1];
		case 1:	//우
			return EventLayer[Area[Player.map].y_start + Player.y][Area[Player.map].x_start + Player.x + 1];
	}
}