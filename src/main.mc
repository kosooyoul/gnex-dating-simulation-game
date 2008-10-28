#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	19735			//테스트 고유번호
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"AHYANET RPG"
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
%}
#else
%{
	#DEFINE PLAYERVER	4
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE APPTYPE		1
	#DEFINE APPCPID		19735			//테스트 고유번호
	#DEFINE APPID		10155			//프로그램 ID
	#DEFINE APPNAME		"AHYANET 10155"	//프로그램 이름
	#DEFINE COMPTYPE	2
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include <mapchip.sbm>		//* s구성화면 칩 로드
#include "define.h"					//*! 정의목록
#include "mapdata.h"				//*  맵데이터
#include "map.h"						//   맵표시
#include "status.h"
#include "option.h"
#include "eventsource.h"

#include "title.h"
#include "event.h"					//   이벤트
#include "eventscript.h"			//   이벤트처리
#include "chara.h"					//   주인공
#include "interface.h"				//   인터페이스
#include "prologue.h"

int MovingDirection = 0;
int RunningEventNumber = -1;	//RunningEventNumber번째의 이벤트를 수행, -1은 아무것도 수행안함
int NextKey = -1;						//이벤트 수행중 키입력을 기다리기 위함
int GameMode = 0;					//게임 모드/ 0:타이틀, 1:프롤로그, 2:롤플레이

void TEST(){
	string Temp;

	//SetColor(S_BLACK);
	//FillRectEx(0,230,240,280,2);
	SetFontType(S_FONT_MEDIUM, S_YELLOW, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(Temp,"Frame = %d",Player.frame%4);
	DrawStr(20,245,Temp);
	MakeStr2(Temp,"Scroll = %d, %d",ScrollMapX,ScrollMapY);
	DrawStr(20,255,Temp);
	MakeStr1(Temp,"Direction = %d",Player.direction);
	DrawStr(20,265,Temp);
	MakeStr2(Temp,"Position = %d, %d",1,1);
	DrawStr(20,275,Temp);

}

//******************************************************************************************************[ Main ]
void main(){
	//mode: title, play(move), battle, event, menu(item,skill,status,.....)
	InitPlayer();						//주인공 초기화
	SetArea();
	SetEvent();
	SetTimer(20, 1);					//이동 및 맵 출력 시간 간격, 이벤트 수행 속도(에뮬 40, 핸드폰 임시 40)
	SetTimer1(500, 1);					//이벤트 이동 시간 간격//기본 500
}

//******************************************************************************************************[ EVENT_TIMEOUT ]
void EVENT_TIMEOUT(){
	int i;
	switch(GameMode){
		//타이틀(GameMode=0)
		case 0:	
			if(!swData){
				RunTitle();
			}
			break;

		//프롤로그
		case 1:
			ClearBlack();
			RunPrologue();
			break;

		//이동모드(GameMode=2)
		case 2:
			switch(swData){
				//타이머0(t=30)
				case 0:
					//자연스러운 이동 #1
					SetDirection(0, MovingDirection);
					MovePosition(0, MovingDirection);
					//맵 스크롤
					MapScroll();						
					//각 레이어 출력
					DrawSubLayer();			//하위맵 출력
					DrawSupLayer(0);		//상위맵 0단계 출력
					DrawEventLayer();		//주인공 및 이벤트 출력
					DrawSupLayer(1);		//상위맵 1단계 출력

					DrawInterface();

					//이벤트 수행중에
					if(RunningEventNumber >= 0){
						EventObject[RunningEventNumber].EventLoop = 1;
						RunEventLine(RunningEventNumber);
					}
					break;

				//타이머1(t=500) 
				case 1:
					for(i = 0; i < MAX_EVENT_COUNT; i++){
						if(EventObject[i].MoveType == 1)
							MoveEventRandom(i);			//테스트 코드 : 이벤트 랜덤이동
					}
					break;
			}

			TEST();					//테스트코드

			break;
			
		//메뉴 모드(GameMode=2)
		case 3:
			if(!swData){
				RestoreLCD();
				//DrawMenu(MenuPX, MenuPY);
				switch (selected_menu){
					case 0:	
					case 1:	
					case 2:	
					case 3:	
					case 4:	break;
				}
			}
			break;

		//이벤트수행 모드(GameMode=3)
		case 4:
			RestoreLCD();
			DrawInterface();

			EventObject[RunningEventNumber].EventLoop = 1;
			RunEventLine(RunningEventNumber);
			break;
	}
	
	Flush();
}

//******************************************************************************************************[ EVENT_KEYPRESS ]
void EVENT_KEYPRESS(){
	switch(GameMode){
		//타이틀(GameMode=0)
		case 0:
		case 1:
			NextKey = swData;
			break;

		//이동모드(GameMode=1)
		case 2:
			switch(swData){
				//정면에 이벤트 실행
				case SWAP_KEY_OK:
					RunningEventNumber = SerchEvent() - 1;
					//이벤트가 있다면 그 이벤트는 나를 볼 것이다
					if(RunningEventNumber >= 0){
						EventObject[RunningEventNumber].direction = (Player.direction + 2) %4;
						ChangeMode(4);
					}
					break;

				//메뉴 출력
				case SWAP_KEY_CLR:
					ChangeMode(3);
					break;
				
				//자연스러운 이동 #1
				case SWAP_KEY_UP:
				case SWAP_KEY_DOWN:
				case SWAP_KEY_LEFT:
				case SWAP_KEY_RIGHT:
				case SWAP_KEY_RELEASE:
				 	MovingDirection = swData;
					break;

				//숫자버튼
				case SWAP_KEY_1:		
				case SWAP_KEY_2:		
				case SWAP_KEY_3:		
				case SWAP_KEY_4:		
				case SWAP_KEY_5:		
				case SWAP_KEY_6:		
				case SWAP_KEY_7:		
				case SWAP_KEY_8:		
				case SWAP_KEY_9:		
				case SWAP_KEY_0:		
				case SWAP_KEY_SHARP:	break;
				default:
					break;
			}
			break;

		//메뉴 모드(GameMode=2)
		case 3:
			//입력키에 대한 메뉴선택
			//ShowMenu(swData);
			ChangeMode(2);
			break;

		//이벤트수행 모드(GameMode=3)
		case 4:
			if(RunningEventNumber >= 0)
				NextKey = swData;
			else
				//이동모드로
				ChangeMode(2);
			break;

	}

}

//******************************************************************************************************[ Any Fuction ]
void ChangeMode(int Mode){
	switch(Mode){
		//타이틀로
		case 0:				GameMode = 0;	break;
		//프롤로그로
		case 1:				GameMode = 1;	break;
		//이동모드로
		case 2:				GameMode = 2;	break;
		//메뉴모드로
		case 3:
		//이벤트실행모드로
		case 4:
			DrawSubLayer();		//하위맵 출력
			DrawSupLayer(0);		//상위맵 0단계 출력
			DrawEventLayer();		//주인공 및 이벤트 출력
			DrawSupLayer(1);		//상위맵 1단계 출력
			SaveLCD();
			GameMode = Mode;
			break;
					
		//
		default:							break;
	}
}