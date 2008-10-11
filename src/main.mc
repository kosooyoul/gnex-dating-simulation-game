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

	SetTimer1(20,1);                //이벤트 처리 주기
}

TEST(){
        MakeStr2(temp,"r=%3d  a=%d ",GetTotalDay(1984, 12, 12),GetTotalDay(2008, 10, 11));
        DrawStr(2,100,temp);
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
	Clear(S_JADE);

	switch(swData){
		case 0:

		case 1:
			DrawBackground();
			TEST();

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