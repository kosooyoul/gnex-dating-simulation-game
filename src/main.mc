#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	19732			//테스트 고유번호
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"AHYANET RPG"
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
%}
#else
%{
	#DEFINE PLAYERVER	4
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	
	#DEFINE AUDIOTYPE	255
	#DEFINE APPTYPE		1
	#DEFINE APPCPID		19732			//테스트 고유번호
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
#include "mapchip.sbm"				//*   맵칩
#include "bg.sbm"					//*   맵칩
#include "define.h"					//*   Define
#include "mapdata.h"				//*   맵데이터
#include "bgsound.h"				//    배경음 제어
#include "map.h"					//  fv맵처리
#include "status.h"					//
#include "option.h"					//   v게임옵션
#include "eventsource.h"			//*   이벤트데이터
#include "title.h"					// m  타이틀
#include "event.h"					//  fv이벤트
#include "eventscript.h"			// m  이벤트처리
#include "chara.h"					//   v주인공
#include "interface.h"				//  f 인터페이스
#include "prologue.h"				// m v프롤로그
#include "menu.h"					// m  메뉴
#include "ctrlrom.h"				//  f 롬관리

int RunningEventNumber = -1;					//실행중인 이벤트번호, -1은 아무것도 수행안함
int NextKey = -1;								//입력받은 키
int GameMode = 0;								//게임 모드

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

//Main
void main(){
	InitNature();								//시간초기화
	InitPlayer();								//주인공 초기화
	SetArea();									//지역 초기화
	SetEvent();									//이벤트 초기화
	SetTimer(30, 1);							//이동 및 맵 출력 시간 간격, 이벤트 수행 속도
	ChangeMode(0);								//타이틀 모드
	//SetTimer1(500, 1);						//이벤트 이동 빈도
}

//EVENT_TIMEOUT
void EVENT_TIMEOUT(){
	int i;
	switch(GameMode){
		case 0:									//타이틀
			if(!swData){
				RunTitle();							//타이틀 실행
			}break;

		case 1:									//프롤로그
			ClearBlack();							//재출력
			RunPrologue();							//프롤로그 실행
			break;

		case 2:									//이동모드
			SetDirection(0, MovingDirection);	//자연스러운 이동 #1
			MovePosition(0, MovingDirection);	//자연스러운 이동 #2
			MapScroll();						//맵 스크롤
			DrawSubLayer();						//하위맵 출력
			DrawSupLayer(0);					//상위맵 0단계 출력
			DrawEventLayer();					//주인공 및 이벤트 출력
			DrawSupLayer(1);					//상위맵 1단계 출력
			DrawInterface();					//인터페이스 출력

			if(RunningEventNumber >= 0){		//이벤트 수행중이면 이벤트 수행
				EventObject[RunningEventNumber].EventLoop = 1;
				RunEventLine(RunningEventNumber);
			}break;
			
		case 3:									//메뉴 모드
			if(!swData){
				RestoreLCD();
				DrawMenu(0);
				switch (selected_menu){
					case 0:	
					case 1:	
					case 2:	
					case 3:	
					case 4:	break;
				}
			}
			DrawInterface();						//인터페이스 출력
			break;

		case 4:									//이벤트수행 모드
			RestoreLCD();							//버퍼 로드
			DrawInterface();						//인터페이스 출력
			EventObject[RunningEventNumber].EventLoop = 1;
			RunEventLine(RunningEventNumber);		//이벤트 수행
			break;
	}//END SWITCH[GameMode]

	DrawOption();
	
	Flush();
}

//EVENT_KEYPRESS
void EVENT_KEYPRESS(){
	switch(GameMode){
		case 0:								//타이틀
		case 1:								//프롤로그
			NextKey = swData;
			break;

		case 2:								//이동모드
			switch(swData){
				case SWAP_KEY_OK:				//정면에 이벤트 실행
					RunningEventNumber = SerchEvent() - 1;
					//정면에 이벤트가 있다면 그 이벤트는 나를 볼것임
					if(RunningEventNumber >= 0){
						EventObject[RunningEventNumber].direction = (Player.direction + 2) %4;
						ChangeMode(4);
					}
					break;

				case SWAP_KEY_CLR:				//메뉴 출력
					ChangeMode(3);
					break;
				
				//자연스러운 이동 #1
				case SWAP_KEY_UP:
				case SWAP_KEY_DOWN:
				case SWAP_KEY_LEFT:
				case SWAP_KEY_RIGHT:
				case SWAP_KEY_RELEASE:
					Now.Today.Hour = (Now.Today.Hour + (Now.Today.Minute + 1) / 60) % 24;	//테스트 코드
					Now.Today.Minute = (Now.Today.Minute + 1) % 60;							//테스트 코드
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

				default:				break;
			}
			break;

		case 3:								//메뉴 모드
			ShowMenu(swData);					//입력키에 대한 메뉴선택
			break;

		case 4:								//이벤트수행 모드
			if(RunningEventNumber >= 0)
				NextKey = swData;
			else
				ChangeMode(2);					//이동모드로
			break;

	}//END SWITCH[GameMode]


	//옵션 변경 단축키
	ChangeOption(swData - 1);

}

//******************************************************************************************************[ Any Fuction ]
void ChangeMode(int Mode){
	switch(Mode){
		case 0:			//타이틀로
			PlayMusic(0);
			GameMode = 0;	break;
			break;
		case 1:			//프롤로그로
			GameMode = 1;	break;
		case 2:			//이동모드로
			if(GameMode < 2){
				PlayMusic(-1);
				PlayMusic(2);
			}
			GameMode = 2;	break;
		case 3:			//메뉴모드로
		case 4:			//이벤트실행모드로
			DrawSubLayer();			//하위맵 출력
			DrawSupLayer(0);		//상위맵 0단계 출력
			DrawEventLayer();		//주인공 및 이벤트 출력
			DrawSupLayer(1);		//상위맵 1단계 출력
			SaveLCD();				//현재화면 버퍼에 저장
			GameMode = Mode;
			break;

		default:
			break;
	}//END SWITCH[Mode]
}