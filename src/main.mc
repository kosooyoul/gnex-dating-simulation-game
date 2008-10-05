//화면크기 = 240, 320-α

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
#include "define.h"
#include "status.h"
#include "interface.h"
#include "eventvalues.h"
#include "eventscript.h"

int TestCount = 0;			//테스트:타이머 동작 확인

void main()
{
	ClearBlack();
	SetTimer(50,1);		//이벤트 처리 주기
	SetTimer1(10,1);		//이벤트 처리 주기

}

void TEST()
{
	string temp;
	//*테스트:전역변수 확인
	if(TestCount > 999)TestCount=0;
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr3(temp,"Timer=%3d  Key=%3d  EventPointer=%d",TestCount++,NextKey,EventPointer);
	DrawStr(2,150,temp);
	MakeStr2(temp,"SelectedAnswer=%d  Variable[0]=%d",SelectedAnswer,Variable[0]);
	DrawStr(2,170,temp);

	MakeStr2(temp,"B=%d  F=%d",S_BLOODRED,S_BLOODRED);
	DrawStr(2,300,temp);

	//*/
}

void EVENT_TIMEOUT()
{
	ClearBlack();
	TEST();

	switch(swData){
		case 0:
			
		case 1:
			DrawBackground();
			RunEventLine();
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