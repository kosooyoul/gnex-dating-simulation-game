//화면크기 = 240, 298-α

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

#include "define.h"
#include "function.h"
#include "status.h"
#include "interface.h"
#include "eventvalues.h"
#include "eventscript.h"

int TestCount = 0;			//테스트:타이머 동작 확인

void main()
{
	InitNature();

	SetTimer1(10,1);		//이벤트 처리 주기
}

void TEST()
{
	string temp;
	int i=150;
	string TempString = "임시 텍스트 임시 임시 ㅎㅎ";
	//*테스트:전역변수 확인
	if(TestCount > 1800)TestCount=0;
	SetFontType(S_FONT_LARGE, S_PINK, S_BLACK, S_ALIGN_LEFT);
	MakeStr3(temp,"Timer=%3d  Key=%3d  EventPointer=%d",TestCount++,NextKey,EventPointer);
	DrawStr(2,-30 + TestCount%360,temp);
	MakeStr3(temp," CNT=%d  SelectedAnswer=%d  Variable[0]=%d",(TestCount%700)/100,SelectedAnswer,Variable[0]);
	SetFontType(S_FONT_LARGE, S_SKY, S_BLACK, S_ALIGN_LEFT);
	DrawStr(3,-10 + TestCount%360,temp);
	//*/
	//i = TestCount%360;
	ShadowText(10, 100, 0 + (TestCount%400)/80, S_BLACK, S_WHITE);
	ShadowText(20, 115, 1 , S_BLACK, S_PINK);
	ShadowText(30, 130, 3, S_BLACK, S_GREEN);
	ShadowText(40, 145, 4, S_BLACK, S_YELLOW);
	ShadowText(50, 160, 5 + (TestCount%40)/20, S_BLACK, S_JADE);
	ShadowText(40, 175, 7, S_BLACK, S_YELLOW);
	
}
void ShadowText(int j, int i, int z, int sc, int tc)
{
	string TempString;
	TempString = Messages[z];
	SetFontType((TestCount%700)/100, sc, S_BLACK, S_ALIGN_LEFT);
	DrawStr(- 1 + j,  + 1 + i, TempString);
	DrawStr(- 1 + j,      + i, TempString);
	DrawStr(    + j,  + 1 + i, TempString);
	DrawStr(    + j,      + i, TempString);
	DrawStr(+ 1 + j,  + 1 + i, TempString);
	DrawStr(+ 1 + j,      + i, TempString);
	DrawStr(    + j,  + 1 + i, TempString);
	DrawStr(- 1 + j,  + 1 + i, TempString);
	DrawStr(+ 1 + j,  + 1 + i, TempString);
	DrawStr(- 1 + j,  - 1 + i, TempString);
	DrawStr(    + j,  - 1 + i, TempString);
	DrawStr(+ 1 + j,  - 1 + i, TempString);
	SetFontType((TestCount%700)/100, tc, S_BLACK, S_ALIGN_LEFT);
	DrawStr(j,i, TempString);
}//S_FONT_LARGE


void EVENT_TIMEOUT()
{
	ClearWhite();
	TEST();

	switch(swData){
		case 0:

		case 1:
			DrawBackground();
			RunEventLine();
			DrawInterface();
			break;
		case 2:
			break;
	}
	Flush();
}

void EVENT_KEYPRESS()
{
	NextKey = swData;
}