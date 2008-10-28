struct Point{
	int X;
	int Y;
};

#define MAX_EVENT_COUNT		14		//이벤트 수 현재 7 개다. 최대 카운터 + 1

//맵표시관련 모듈에 대해서
#define _TopSize	32							//상단의 인터페이스 구성
#define P_MSG_Y		18

//색상
#define S_RED		109
#define S_BLOODRED	79
#define S_YELLOW	125
#define S_GREEN		105
#define S_BLUE		21
#define S_JADE		25
#define S_SKY		30
#define S_VIOLET	93	
#define S_PINK		114

#define MOVE_EFFECT_COUNT	10		//화면전환시 효과
#define MAP_POS_X1			0
#define MAP_POS_X2			239
#define MAP_POS_Y1			20
#define MAP_POS_Y2			280

//chara.h
#define _CenterPositionX 52 + 24+32		//케릭터 표시위치 = 4*16-(8)-? -12 : 3	;+16*2	+0
#define _CenterPositionY 40 + 16+32		//케릭터 표시위치 = 4*16-(8)-? -16 : 20	;+16*2	+32

//map.h
#define _PlayerPosition 7						//주인공 화면위치 조절
#define _SubChipMoveable 99				//이동 가능한 하위칩 마지막 번호
#define _SupChipMoveable 39				//이동 가능한 상위칩 마지막 번호
#define _SupChipWall 139						//장애물에 대한 상위칩 마지막 번호