struct Point{
	int X;
	int Y;
};

#define MAX_EYE_FRAME		50		//아이캐치, 챕터표시 최대 프레임 수
#define MAX_CHAPTER_FRAME	100

#define	NV_SIZE				16		//세이브용 테스트

#define MAX_EVENT_COUNT		12		//이벤트 수 현재 3 개다. 최대 카운터 + 1

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
#define _PlayerPosition 7				//주인공 화면위치 조절
#define _SubChipMoveable 99				//이동 가능한 하위칩 마지막 번호
#define _SupChipMoveable 19				//이동 가능한 상위칩 마지막 번호
#define _SupChipWall 250//119				//장애물에 대한 상위칩 마지막 번호

//EVENT MAP
#define T1X		148		//도쿄
#define T1Y		195
#define T6X		12		//서울
#define T6Y		87

//이미지 불러오기
image srcImage;
image decodeImage;

void DrawImage(int x, int y, int imgIndex){
	int ret;
	string temp;

	MakeStr1(temp, "bg%d", imgIndex);

	ret = ReadImage(temp);
	ret = GNEX_LoadImage(decodeImage, srcImage);

	if(ret == 1){
		GNEX_CopyImage2(x, y, decodeImage);
		//ret = GNEX_ReleaseImage(decodeImage);
	}else{
		SetFontType(S_FONT_LARGE, S_BLACK, S_WHITE, S_ALIGN_CENTER);
		DrawStr(x, y, temp);
		DrawStr(x, y + 20, "image draw fail");
	}
}

int ReadImage(int *fname){
	int ret;
	int hdl;
	int fileInfo[4];

	ret = FileTest(fname);
	if (ret==-1)
		return 1; // NO FILE
	hdl = FileOpen(fname, S_FILE_OPENMODE_READ);
	if (hdl==-1)
		return 1; // OPEN ERROR

	ret = FileGetInfo(fname, fileInfo);
	ret = SetMediaSize(srcImage, 0);
	ret = SetMediaSize(srcImage,  fileInfo[0]);
	ret = FileReadMedia (hdl, srcImage, 0, fileInfo[0]);
	ret = FileClose(hdl);

	return 0; // 성공
}
