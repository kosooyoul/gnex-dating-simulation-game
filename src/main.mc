//화면크기 = 240, 298±α
//General Virtual Machine 이 탑재 되어있는 기기에서 실행

#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	60000
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"integral GVM2X App"
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
	#DEFINE APPCPID		60000
	#DEFINE APPID		1
	#DEFINE APPNAME		"integral GNEX App"
	#DEFINE COMPTYPE	0
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include "interface.sbm"
//#include "testsound.ssd"

#include "define.h"
#include "function.h"
#include "option.h"
#include "status.h"
#include "interface.h"
#include "eventvalues.h"
#include "eventscript.h"
#include "title.h"
#include "prologue.h"

int TestCount = 0;			//테스트:타이머 동작 확인
int NextKey = -1;			//시스템:입력받은 키번호
int GameMode = 0;

void main()
{
	SetTimer1(20,1);                //이벤트 처리 주기
	ChangeGameMode(0);
}

void TEST()
{
	string temp;
	int i=150;
	string TempString = "임시 텍스트 임시 임시";
	//*테스트:전역변수 확인
	if(TestCount > 1800)
	TestCount=0;
	SetFontType(S_FONT_LARGE, S_BLOODRED, S_BLACK, S_ALIGN_LEFT);
	MakeStr3(temp,"Timer=%3d  Key=%3d  EventPointer=%d", TestCount++, NextKey, EventPointer);
	DrawStr(2,-30 + TestCount%360,temp);
	MakeStr3(temp," CNT=%d  SelectedAnswer=%d  Variable[0]=%d", (TestCount%700)/100, SelectedAnswer, Variable[0]);
	SetFontType(S_FONT_LARGE, S_RED, S_BLACK, S_ALIGN_LEFT);
	DrawStr(3, -10 + TestCount%360, temp);

	MakeStr3(temp, "r=%3d  a=%d   %d", GetTotalDay(1984, 12, 12), GetTotalDay(2008, 10, 11), 0);
	DrawStr(2, 100, temp);

	/*
	//i = TestCount%360;
	ShadowText(10, 100, 0 + (TestCount%400)/80, S_BLACK, S_WHITE);
	ShadowText(20, 115, 1 , S_BLACK, S_PINK);
	ShadowText(30, 130, 3, S_BLACK, S_GREEN);
	ShadowText(40, 145, 4, S_BLACK, S_YELLOW);
	ShadowText(50, 160, 5 + (TestCount%40)/20, S_BLACK, S_JADE);
	ShadowText(40, 175, 7, S_BLACK, S_YELLOW);
	*/
	
}

void EVENT_TIMEOUT()
{
	Clear(S_BLACK);

	switch(GameMode)
	{
		//타이틀모드
		case 0:
			RunTitle();
			break;

		//프롤로그모드
		case 1:
			RunPrologue();
			break;

		//게임진행모드
		case 2:
			RunMainPlay();
			//TEST();					//테스트
			break;

		//기능사용모드
		case 3:
			break;

		default:
			break;
	}
	Flush();
}

void EVENT_KEYPRESS()
{
	switch(swData)
	{
		case SWAP_KEY_OK:
			//PlaySoundEx(1, spf1);
			break;

		case SWAP_KEY_CLR:
			//PlaySoundEx(1, spf2);
			break;

		case SWAP_KEY_LEFT:
		case SWAP_KEY_RIGHT:
		case SWAP_KEY_UP:
		case SWAP_KEY_DOWN:
			//PlaySoundEx(2, spf0);
			break;
	}
	
	switch(GameMode)
	{
		//타이틀모드
		case 0:
		//프롤로그모드
		case 1:
		//게임진행모드
		case 2:
			NextKey = swData;
			break;

		//기능사용모드
		case 3:
			break;

		default:
			break;
	}
}

void ChangeGameMode(int Mode)
{
	//StopSound();
	switch(Mode)
	{
		//타이틀모드
		case 0:
			InitNature();
			//PlaySound(sound1);
			GameMode = 0;
			break;

		//프롤로그모드
		case 1:
			GameMode = 1;
			break;

		//게임진행모드
		case 2:
			GameMode = 2;
			break;

		//기능사용모드
		case 3:
			GameMode = 3;
			break;

		default:
			break;
	}
}