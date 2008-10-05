//==============================================================================
//
//	GNEX Script Common Header
//
//	FILE NAME
//		SScript.h
//
//	DESCRIPTION
//
//
//	REFERENCES
//
//
//	Copyright (C) 2000~2003 by SINJISOFT. All Rights Reserved.
//
//	HISTORY
//		2000. 8. 7  Version 1.00 Release
//		2000. 8.21  Version 1.01 Release
//		2000.10.27	Version 1.10 Release
//		2001. 1.12	Version 1.50 Release (GVM 2X)
//		2001.11.03  Modify
//		2003.05.01	Add macro constant for GNEX
//		2003.09.25	Add SMSGetCount type
//		2004.10.21	Integrate with GVM SScript
//		2008.07.31	Version 1.91 Release
//==============================================================================
//
#ifndef	_SSCRIPT_
#define	_SSCRIPT_
//
//==============================================================================
//
//	System Variables
//
//==============================================================================
//	int	swData
//	int	swWidth
//	int	swHeight
//	int	swFrame
//	int	swFrame2
//	int	swFrame3
//	int	swFrame6
//	int	swRcvBuf[]
//	int	swRsRcvBuf[]

//==============================================================================
//
//	System Libraries
//
//==============================================================================
//	void GetHwConfig(int hwcfg[])
//		 hwcfg[0]: LCD Class
//		 hwcfg[1]: LCD type
//		 hwcfg[2]: Sound type
//		 hwcfg[3]: Vocoder type
//
#define SWAP_LCD_CLASS_0	0x01	// 120x64  ~ 120x80  미만, 세로 80미만
#define SWAP_LCD_CLASS_1	0x02	// 120x80  ~ 128x128 미만, 세로 80~128미만
#define SWAP_LCD_CLASS_2	0x04	// 128x128 ~ 176x176 미만, 세로 128~176미만
#define SWAP_LCD_CLASS_3	0x08	// 176x176 ~ 176x210 미만, 세로 176~210이하
#define SWAP_LCD_CLASS_4	0x10	// 176x210 ~ 256x256 미만, 세로 210~256이하

#define	SWAP_LCD_GRAY		0x02	// Grayscale
#define	SWAP_LCD_COLOR		0x04	// Color
#define	SWAP_LCD_TRUECOLOR	0x08	// TrueColor

#define	SWAP_SOUND_BUZZER	0x01
#define	SWAP_SOUND_MA1		0x02
#define SWAP_SOUND_MA2		0x04
#define SWAP_SOUND_CMX		0x08
#define SWAP_SOUND_MIDI		0x10
#define SWAP_SOUND_MA3		0x20
#define SWAP_SOUND_MA5		0x40
#define SWAP_SOUND_WAVE		0x80
#define SWAP_SOUND_AMR_NB	0x100
#define SWAP_SOUND_AMR_WB	0x200

#ifdef _GVM
#define	GVM_SOUND_BUZZER	0x01
#define	GVM_SOUND_MA1		0x02
#define GVM_SOUND_MA2		0x04
#define GVM_SOUND_CMX		0x08
#define GVM_SOUND_MIDI		0x10
#define GVM_SOUND_MA3		0x20
#define GVM_SOUND_MA5		0x40
#endif

#define	SWAP_VOC_CDMA		0x01

//
//	void GetSysMin(string s)
//
//	int  GetSysUserID(string s)
//		 return: PTP ID (0 or 1)
//		 s:      UserID
//
// 	void GetLocInfo(int loc[])
//		 loc[0]:SID
//		 loc[1]:NID
//		 loc[2]:REG_ZONE
//		 loc[3]:BASE_ID
//		 loc[4]:PILOT_PN
//
//==============================================================================
//
//	Graphic Libraries
//
//==============================================================================
//
//======================================
//	Pixel Graphics
//======================================
//	void ClearWhite()
//	void ClearBlack()
//	void Clear(int color)
//
//	void PutPixel(int x, int y, int color)
//	int  GetPixel(int x, int y)
//		 color: below definitions
//
//	void SetGamma(int gamma)
//		 gamma: 0~6
//
//======================================
//	Image type info definitions
//======================================
#define S_IMG_GRAY1			2
#define S_IMG_GRAY2			3
#define S_IMG_GRAY4			4
#define S_IMG_COLOR1		5
#define S_IMG_COLOR2		6
#define S_IMG_COLOR4		7
#define S_IMG_COLOR8		8
#define S_IMG_TCOLOR1		9
#define S_IMG_TCOLOR2	    10
#define S_IMG_TCOLOR4		11
#define S_IMG_TCOLOR8		12

//
//======================================
// BW/Grayscale palette
//======================================
#define S_WHITE				0x00
#define	S_LGRAY				0x01
#define	S_DGRAY				0x02
#define S_BLACK				0x03
#define S_TRANSPARENT		0x04

#define S_GR_WHITE			0x00
#define S_GR_BLACK			0x03
#define S_GR_TRANSPARENT	0x04

//======================================
//	2D Graphic Primitives
//======================================
//	void SetColor   (int color)
//	void DrawLine   (int x1, int y1, int x2, int y2)
//	void DrawHLine  (int x1, int x2, int y)
//	void DrawVLine  (int x,  int y1, int y2)
//	void DrawRect   (int x1, int y1, int x2, int y2)
//	void FillRect   (int x1, int y1, int x2, int y2)
//	void DrawEllipse(int x,  int y,  int rx, int ry)
//	void FillEllipse(int x,  int y,  int rx, int ry)
//	void DrawRectRound	(int x1, int y1, int x2, int y2, int r)
//	void FillRectRound	(int x1, int y1, int x2, int y2, int r)
//	void InvertRect	(int x1, int y1, int x2, int y2)
//	void SetClip	(int x1, int y1, int x2, int y2)
//	void ResetClip	()

//======================================
//	Text Libraries
//======================================
//	void SetStrType(int font, int fcolor, int bcolor, int align)
//	void SetStrFont(int font)
//	void SetStrColor(int fcolor, int bcolor)
//	void SetStrAlign(int align)
//		 font: below font definitions
//
#define	S_FONT_SMALL		0	// 4x6 English
#define	S_FONT_MEDIUM		1	// 6x8 Engilsh
#define	S_FONT_LARGE		2	// 6x12 Engilsh & Korean
#define	S_FONT_DOUBLE		3	// 12x24 Engilsh & Korean

#ifdef _GVM
#define	S_FONT_OEM1			4	// OEM Font medium
#define	S_FONT_OEM2			5	// OEM Font large
#else
#define S_FONT_HUGE			4	// 8x16 Engilsh & Korean
#define S_FONT_HUGE_DOUBLE	5	// 16x32 Engilsh & Korean
#endif

//		 alignment: below align definitions
#define	S_ALIGN_LEFT		0	// Left alignment
#define	S_ALIGN_CENTER		1	// Center alignment
#define	S_ALIGN_RIGHT		2	// Right alignment

//
//	void DrawStr      (int x, int y, string s)
//	void DrawStrSolid (int x, int y, string s)
//	void DrawText     (int x, int y, string s)
//	void DrawTextSolid(int x, int y, string s)
//
//======================================
//	Image Libraries
//======================================
//
//	void SetPalette(int pal[], int pallist[]);
//		 pallist[0] : below type
//		 pallist[1]~: palette data
//
#define S_PAL_GRAY1			2
#define S_PAL_GRAY2			3
#define S_PAL_GRAY4			4
#define S_PAL_COLOR1		5
#define S_PAL_COLOR2		6
#define S_PAL_COLOR4		7
#define S_PAL_COLOR8		8
//
//	void CopyImage      (int x, int y, image m)
//	void CopyImageDir   (int x, int y, image m, dir)
//	void CopyImagePal   (int x, int y, image m, int pal[])
//	void CopyImageDirPal(int x, int y, image m, int dir, int pal[])
//		 dir: S_DIR_NORMAL, S_DIR_MIRROR
//		 pal: palette array
//
#define	S_DIR_NORMAL		0
#define	S_DIR_MIRROR		1

#ifdef _GVM
//======================================
//	Depth Queue Libraries
//======================================
//
//	void InitDepthQ()
//	void AddDepthQ(int dummy, int x, int y, image m, int dir)
//	void DrawDepthQ(int order)
//
//		 order: S_DQ_XINC, S_DQ_XDEC, S_DQ_YINC, S_DQ_YDEC
//
#define	S_DQ_XINC			0
#define	S_DQ_XDEC			1
#define	S_DQ_YINC			2
#define	S_DQ_YDEC			3
#endif

//======================================
//	LCD Controls
//======================================
//	void SaveLCD()
//	void RestoreLCD()
//	void CopyLcd(int lcd)
//	void ScrollLCD(int lcd, int dx, int dy, int wrap)
//	void Flush()
//
//==============================================================================
//
//	String Libraries
//
//==============================================================================
//
//======================================
//	String Libraries
//======================================
//
//	int	 GetMediaSize(media m)
//	void SetMediaSize(media m, int size)
//
//	void StrInit(string s, int len)
//	int  StrLen (string s)
//	void StrCpy (string s1, string s2)
//	void StrSub (string s1, string s2, int start, int len)
//	void StrCat (string s1, string s2)
//	int  StrCmp (string s1, string s2)
//	int  GetChar(string s, int index)
//	void PutChar(string s, int index, int ch)
//
//======================================
//	String to Integer Ligraries
//======================================
//
//	int	 AsciiToInt(string s)
//	void IntToAscii(string s, int a)
//
//	int  GetByte (int a[], int byteidx)
//	void PutByte (int a[], int byteidx, int ch)
//	void GetBytes(int a[], int byteidx, string str, int size)
//  void PutBytes(int a[], int byteidx, string str, int size)
//
//	void MakeStrStr(string s, StringConstant format, string src)
//	void MakeStr1  (string s, StringConstant format, int a)
//	void MakeStr2  (string s, StringConstant format, int a, int b)
//	void MakeStr3  (string s, StringConstant format, int a, int b, int c)
//	void MakeStr4  (string s, StringConstant format, int a, int b, int c, int d)
//	void MakeStr5  (string s, StringConstant format, int a, int b, int c, int d, int e)
//	void StrInput(string title, string s)
//		 format: Use integer printf format
//
//==============================================================================
//
//	Handset Control Libraries
//
//==============================================================================
//
//	void PlaySound(sound m)
//	void StopSound()
//
//======================================
//	Buzzer Tone Definition
//======================================
//
enum {
	SWAP_NOTE_G3,
	SWAP_NOTE_G3P,
    SWAP_NOTE_A3,
    SWAP_NOTE_A3P,
    SWAP_NOTE_B3,
    SWAP_NOTE_C4,
    SWAP_NOTE_C4P,
    SWAP_NOTE_D4,
    SWAP_NOTE_D4P,
    SWAP_NOTE_E4,
    SWAP_NOTE_F4,
    SWAP_NOTE_F4P,
    SWAP_NOTE_G4,
    SWAP_NOTE_G4P,
    SWAP_NOTE_A4,
    SWAP_NOTE_A4P,
    SWAP_NOTE_B4,
    SWAP_NOTE_C5,
    SWAP_NOTE_C5P,
    SWAP_NOTE_D5,
    SWAP_NOTE_D5P,
    SWAP_NOTE_E5,
    SWAP_NOTE_F5,
    SWAP_NOTE_F5P,
    SWAP_NOTE_G5,
    SWAP_NOTE_G5P,
    SWAP_NOTE_A5,
    SWAP_NOTE_A5P,
    SWAP_NOTE_B5,
    SWAP_NOTE_C6,
    SWAP_NOTE_C6P,
    SWAP_NOTE_D6,
    SWAP_NOTE_D6P,
    SWAP_NOTE_E6,
    SWAP_NOTE_F6,
    SWAP_NOTE_F6P,
    SWAP_NOTE_G6,
	SWAP_NOTE_R,
	SWAP_NOTE_END
};
//
//	void PlayVocoder(voc m)
//	void StopVocoder()
//
//	void StartVib(int t)
//	void StopVib()
//
//	void SetKeyTone(int sw)
//		 sw: S_OFF, S_ON
//
//	void SetBackLight(int sw)
//		 sw: S_OFF, S_ON, S_MMI
//
#define	S_OFF				0
#define	S_ON				1
#define	S_MMI				2
//
//	void GetUserNV(int a[], int size)
//	void PutUserNV(int a[], int size)
//
//	void SetTimer (int t, int repeat)
//	void SetTimer1(int t, int repeat)
//	void SetTimer2(int t, int repeat)
//	void ResetTimer()
//	void ResetTimer1()
//	void ResetTimer2()
//		 repeat: S_TM_ONCE, S_TM_REPEAT
//
#define	S_TM_ONCE			0
#define	S_TM_REPEAT			1
//
//==============================================================================
//
//	Mathematic Functions
//
//==============================================================================
//
//	void RandSeed(int a)
//	int  Rand(int a, int b)
//	int  RandRatio(int a)
//	int  Abs(int a)
//	int  Sgn(int a)
//
//	int  Sin100(int a)
//	int  Cos100(int a)
//	int  Tan100(int a)
//	int  ASin100(int a)
//	int  ACos100(int a)
//	int  ATan100(int a)
//
//	int  Avr(int a, int b)
//	int  Avr3(int a, int b, int c)
//	int  Max(int a, int b)
//	int  Max3(int a, int b, int c)
//	int  Min(int a, int b)
//	int  Min3(int a, int b, int c)
//
//	int  FindMax(int a[], int size)
//	int  FindMin(int a[], int size)
//	int  FindNear(int a[], int size)
//
//	void ArrayToVar(int a[], int b, int size, int op)
//	void ArrayToArray(int a[], int b[], int size, int op)
//	void ArrayToArray2(int a[], int b[], int c[], int size, int op)
//
//		 op: below definition
//
#define	S_OP_SET			0
#define	S_OP_ADD			1
#define	S_OP_SUB			2
#define	S_OP_MULT			3
#define	S_OP_DIV			4
#define	S_OP_MOD			5
#define	S_OP_AND			6
#define	S_OP_OR				7
#define	S_OP_NOT			8
#define	S_OP_XOR			9
#define	S_OP_RSHIFT			10
#define	S_OP_LSHIFT			11
//
//==============================================================================
//
//	Etc. Libraries
//
//==============================================================================
//
//	int  HitCheck(int a, int b, int dist)
//
//	void GetDate(int a[])
//	void GetTime(int a[])
//
//	void LockChatMode(int sw)
//		 sw: S_OFF, S_ON
//
//	void SetChatMode(int sw)
//		 sw: S_OFF, S_ON
//
//==============================================================================
//
//	Network Libraries
//
//==============================================================================
//
//	void NetReconnect(string ip, int port)
//	void NetSend(int buf[], int size)
//		size: max value
//
//	int  LoadMedia(media m, int key)
//	int  LoadMediaResult(media m)
//
//	void RsCom(int com, int buf[], int size)
//	void RsSend(int buf[], int size)
//
//	int  SendSMS(int TI, string dial, string text)
//
//	void Download(int cpid, int gid, string dlsip, int dlsport, string svrip, int svrport)
//	void BackToBrowser(string url)
//
//	void Exit()
//
//==============================================================================
//
//	Vender Libraries
//
//==============================================================================
//
//	void RegMusicBell(string name, sound m)
//	void RegScreen(string name)
//
//==============================================================================
//
//	Network Libraries II
//
//==============================================================================
//
//	int NetState()
//		GameType : below definition
//
#define S_GTYPE_ALONE	1
#define S_GTYPE_PTP	2
#define S_GTYPE_SERVER	3
#define S_GTYPE_FREE	4

#ifdef _GVM
#define S_GTYPE_ALPTP	5
#define S_GTYPE_ALSVR	6
#define S_GTYPE_PTPSVR	7
#define S_GTYPE_ALL		8
#endif

//
//	void NetConnect(string IP, int Port)
//	void NetDisconnect()
//	void VoiceCall(string dial, int ret)
//		ret: S_OFF, S_ON
//
//==============================================================================
//
//	Event Functions
//
//==============================================================================
//
//	void main()
//
//	void EVENT_END()
//
//	void EVENT_TIMEOUT()
//		 swData: Timer id
//
//	void EVENT_KEYPRESS()
//		 swData: Key code
//
//======================================
//	Key code
//======================================
#define SWAP_KEY_1					0x01
#define	SWAP_KEY_2					0x02
#define	SWAP_KEY_3					0x03
#define	SWAP_KEY_4					0x04
#define	SWAP_KEY_5					0x05
#define	SWAP_KEY_6					0x06
#define	SWAP_KEY_7					0x07
#define	SWAP_KEY_8					0x08
#define	SWAP_KEY_9					0x09
#define	SWAP_KEY_0					0x0A
#define	SWAP_KEY_STAR					0x0B
#define	SWAP_KEY_SHARP					0x0C

#define	SWAP_KEY_CLR					0x0D
#define	SWAP_KEY_SND					0x0E
#define	SWAP_KEY_END					0x0F

#define	SWAP_KEY_LEFT					0x10
#define	SWAP_KEY_RIGHT					0x11
#define	SWAP_KEY_UP					0x12
#define	SWAP_KEY_DOWN					0x13
#define	SWAP_KEY_OK					0x14

#define SWAP_KEY_F1					0x15
#define SWAP_KEY_F2					0x16
#define SWAP_KEY_ENTER					0x17

#define	SWAP_KEY_1_L					0x81
#define	SWAP_KEY_2_L					0x82
#define	SWAP_KEY_3_L					0x83
#define	SWAP_KEY_4_L					0x84
#define	SWAP_KEY_5_L					0x85
#define	SWAP_KEY_6_L					0x86
#define	SWAP_KEY_7_L					0x87
#define	SWAP_KEY_8_L					0x88
#define	SWAP_KEY_9_L					0x89
#define	SWAP_KEY_0_L					0x8A
#define	SWAP_KEY_STAR_L					0x8B
#define	SWAP_KEY_SHARP_L				0x8C

#define	SWAP_KEY_CLR_L					0x8D
#define	SWAP_KEY_SND_L					0x8E
#define	SWAP_KEY_END_L					0x8F

#define	SWAP_KEY_LEFT_L					0x90
#define	SWAP_KEY_RIGHT_L				0x91
#define	SWAP_KEY_UP_L					0x92
#define	SWAP_KEY_DOWN_L					0x93
#define	SWAP_KEY_OK_L					0x94

#define SWAP_KEY_F1_L					0x95
#define SWAP_KEY_F2_L					0x96
#define SWAP_KEY_ENTER_L				0x97

#define SWAP_KEY_RELEASE				0xFF

// 
//	void EVENT_GENERAL()
//		 swData : S_GNR_TOUCHPAD (GNEX event type)
//		 swData2 : Touchpad Event Type
//
#define S_GNR_TOUCHPAD					22

//=======================
// Touchpad Event Type
//=======================
#define SWAP_POINTER_PRESS				0x00
#define SWAP_POINTER_DBCLICK				0x01
#define SWAP_POINTER_MOVE				0x02
#define SWAP_POINTER_RELEASE				0x03

//
//	void EVENT_RECEIVE()
//		 swData: Receive size
//		 swRcvBuf[]: Receive data
//
//	void EVENT_RESULT()
//		 swData: below result code
//
#define	S_RST_RECON_FAIL			0
#define	S_RST_RECON_OK				1
#define	S_RST_TEDIT_DONE			2
#define	S_RST_MDOWN_OK				3
#define	S_RST_MDOWN_FAIL			4
#define	S_RST_INVALID_LCD			5
#define	S_RST_RCV_CHAT				6
#define	S_RST_SMS_OK				7
#define	S_RST_SMS_FAIL				8
//
// SWAP Version 1.5 (GVM 2X)
//
#define S_RST_DISCON_OK				9
#define S_RST_DISCON_FAIL			10
#define S_RST_VOCCALL_FAIL			11

#ifdef _GVM
#define S_RST_PTP_RECON_OK			12
#define S_RST_PTP_RECON_FAIL		13
#define S_RST_PTP_DISCON_OK			14
#define S_RST_PTP_DISCON_FAIL		15
#else
#define	S_RST_PTPCON_OK				12
#define	S_RST_PTPCON_FAIL			13
#define	S_RST_PTPREL_OK				14
#define	S_RST_PTPREL_FAIL			15
#endif

//
// SWAP Version 1.51 (GVM 2X)
//
#define	S_RST_ABN_DISCON			16
#define	S_RST_ABN_PTPREL			17
#define	S_RST_CONTINUE				18
//
// GNEX Version 1.00
//
#define	S_RST_SOUND_END				23
#define	S_RST_VOD_PLAY_END			24
#define	S_RST_VOD_RECORD_END			25
#define	S_RST_COM_READ				26
#define	S_RST_COM_WRITE				27
//
// GNEX Version 1.04
//
#define	S_RST_VODEX						28
#define S_RST_STREDIT_DONE			29

#define S_VODEX_OPEN_OK				1	// S_RST_VODEX의 하위 Event
#define S_VODEX_OPEN_FAIL			2	// S_RST_VODEX의 하위 Event
#define S_VODEX_PLAY_FAIL			3	// S_RST_VODEX의 하위 Event
#define S_VODEX_PROGRESS			4	// S_RST_VODEX의 하위 Event
#define S_VODEX_REPAINT				5	// S_RST_VODEX의 하위 Event

//
//	void EVENT_RSEVENT()
//		 swData: Event
//		 swRsRcvBuf[]: Receive data
//
//	void EVENT_RSRECEIVE()
//		 swData: Receive byte size
//		 swRsRcvBuf[]: Receive data
//
//	void EVENT_SMSRECEIVE()
//		 swData: SMS type
//		 swSmsRcvBuf[]: Receive data
//
#define S_SMS_TYPE_PUSH			0
//
//
//
//==============================================================================



//==============================================================================
//
//	GNEX version 1.0
//
//==============================================================================
//	void CopyImageEx    (int x, int y, image m, int alpha, int zoom, int mir, int rot)
//	void CopyImagePalEx (int x, int y, image m, int pal[], int alpha, int zoom, int mir, int rot)
//	void CopyImageTile  (image m, int x, int y, int x2, y2, int alpha, int zoom, int mir, int rot)
//
#define S_VDI_OPAQUE				0
#define S_VDI_ALPHA_75PCT			1
#define S_VDI_ALPHA_50PCT			2
#define S_VDI_ALPHA_25PCT			3
#define S_VDI_INVERT				4
#define S_VDI_XOR				5

#define	S_VDI_ROTATE_0				0
#define	S_VDI_ROTATE_90				1
#define	S_VDI_ROTATE_180			2
#define	S_VDI_ROTATE_270			3

#define	S_VDI_ZOOM_1X				0
#define	S_VDI_ZOOM_2X				1

//======================================
//	Network (GNEX 1.0)
//======================================
#define	S_NET_MAX_SOCKET			3

// constants for network functions socket type constant
#define	S_NET_SOCK_TCP				1
#define S_NET_SOCK_UDP				2

// network function return values definition
#define S_NET_R_SUCCESS				1
#define S_NET_R_FAIL				-1
#define S_NET_R_WOULDBLOCK			65535
#define S_NET_R_CLOSEDBYPEER			-2

#define S_NET_E_CONNECT				1
#define S_NET_E_DISCONNECT			2
#define S_NET_E_SEND_ENABLE			3
#define S_NET_E_RECV_ENABLE			4
#define S_NET_E_PPP_CLOSED			5

#define S_NET_S_CONNECT 			0
#define S_NET_S_DISCONNECT 			1

//======================================
// Serial Communication (GNEX 1.0)
//======================================
#define S_COM_FLOW_NONE				0x00
#define	S_COM_FLOW_XONXOFF_STRIP		0x01
#define S_COM_FLOW_HW				0x02
#define S_COM_FLOW_XONXOFF_NSTRIP		0x03

#define	S_COM_BRATE_AUTO			0x00
#define	S_COM_BRATE_9600			0x01
#define	S_COM_BRATE_19200			0x02
#define	S_COM_BRATE_38400			0x03
#define	S_COM_BRATE_57600			0x04
#define	S_COM_BRATE_115200			0x05
#define	S_COM_BRATE_230400			0x06

#define S_COM_PORT1				0x00
#define S_COM_PORT2				0x01
#define S_COM_PORT3				0x02
#define S_COM_PORT4				0x03
#define S_COM_USB				0x04


#define	S_COM_READ				1
#define	S_COM_WRITE				2

#define S_COM_R_SUCCESS				1
#define S_COM_R_FAIL				-1
#define S_COM_R_WOULDBLOCK			65535
#define S_COM_R_EMPTY				0

//======================================
// File System (GNEX 1.0)
//======================================
#define	S_FILE_SEEK_SET				1
#define	S_FILE_SEEK_CUR				2
#define	S_FILE_SEEK_END				3

#define S_FILE_OPENMODE_READWRITE 		1
#define S_FILE_OPENMODE_CREATE			2
#define S_FILE_OPENMODE_READ			3
#define S_FILE_OPENMODE_APPEND			4

#define S_FILE_R_FAIL				-1
#define S_FILE_R_SUCCESS			1
#define S_FILE_R_OPENERROR			0

// FontStyle (GNEX 1.0)
#define S_STYLE_NORMAL	   			0
#define S_STYLE_BOLD	   			1
#define S_STYLE_ITALIC	   			2
#define S_STYLE_UNDERLINE  			4

//======================================
// Image Type
//======================================
#define	S_IMG_WBMP					0
#define	S_IMG_BMP					1
#define	S_IMG_GIF					2
#define	S_IMG_JPG					3
#define	S_IMG_SIS					4
#define	S_IMG_PNG					5
#define	S_IMG_VDI					6
#define	S_IMG_OEM					7
#define	S_IMG_WTB					8
#define	S_IMG_WTA					9
#define	S_IMG_YUV					10

#define	S_IMAGE_MAX_COUNT			0x01
#define	S_IMAGE_COUNT				0x02

#define S_IMAGE_R_SUCCESS			1
#define S_IMAGE_R_FAIL				-1
#define S_IMAGE_R_NOTFOUND			0
#define S_IMAGE_R_NOTSUPPORT		-2
#define S_IMAGE_R_FULL				-3

//======================================
// Melody Type
//======================================
#define	S_MEL_BUZ					0
#define	S_MEL_MA1					1
#define	S_MEL_MA2					2
#define	S_MEL_CMX					3
#define	S_MEL_MIDI					4
#define	S_MEL_MA3					5
#define	S_MEL_AAC					6
#define	S_MEL_MA5					7
#define	S_MEL_SMAF					8

#define	S_MELODY_MAX_COUNT			0x01
#define	S_MELODY_COUNT				0x02

#define S_MELODY_R_SUCCESS			1
#define S_MELODY_R_FAIL				-1
#define S_MELODY_R_NOTFOUND			0
#define S_MELODY_R_NOTSUPPORT		-2
#define S_MELODY_R_FULL				-3

//======================================
// Photo Data
//======================================
#define S_MATE_IDLE					0
#define S_MATE_CALL					1
#define S_MATE_PWON					2
#define S_MATE_PWOFF				3
#define S_MATE_NATE					4

#define	S_PHOTO_MAX_COUNT			0x01
#define	S_PHOTO_COUNT				0x02

#define	S_PHOTO_R_SUCCESS			1
#define	S_PHOTO_R_FAIL				-1
#define S_PHOTO_R_NOTFOUND			0
#define S_PHOTO_R_NOTSUPPORT		-2

//======================================
// Camera
//======================================
#define S_CAM_R_SUCCESS				1
#define S_CAM_R_FAIL				-1
#define S_CAM_R_NOTSUPPORT			-2
#define S_CAM_R_FULL				-3

//======================================
// VOD play type (GNEX 1.0)
//======================================
#define	S_VOD_PLAY_ONCE				0
#define	S_VOD_PLAY_REPEAT			1

//======================================
// VOD media type (GNEX 1.0)
//======================================
#define S_VOD_MEDIA_NONE			0
#define S_VOD_MEDIA_ALL				0
#define	S_VOD_MEDIA_MPEG4			1
#define	S_VOD_MEDIA_TCM				2
#define	S_VOD_MEDIA_AAC				3
#define	S_VOD_MEDIA_EVRC			4
#define	S_VOD_MEDIA_H263			5
#define	S_VOD_MEDIA_H264			6

//======================================
// VOD record quality (GNEX 1.0)
//======================================
#define	S_VOD_QUALITY_ECONOMIC		1
#define	S_VOD_QUALITY_STANDARD		2
#define	S_VOD_QUALITY_HIGH			3

//======================================
// VOD storage type (GNEX 1.0)
//======================================
#define	S_VOD_STORAGE_ALL			0
#define	S_VOD_STORAGE_NORMAL		1
#define	S_VOD_STORAGE_LIVESCREEN	2
#define	S_VOD_STORAGE_LIVEBELL		3
#define	S_VOD_STORAGE_RECORD		4
#define	S_VOD_STORAGE_MAX			5

#define	S_VOD_MAX_COUNT				0x01
#define	S_VOD_COUNT					0x02

#define S_VOD_R_SUCCESS				1
#define S_VOD_R_FAIL				-1
#define S_VOD_R_NOTFOUND			0
#define S_VOD_R_NOTSUPPORT			-2
#define S_VOD_R_FULL				-3


//======================================
// SMSGetCount Type
//======================================
#define S_SMS_RECEIVED_MAX_COUNT	1
#define S_SMS_RECEIVED_COUNT 		2
#define S_SMS_SENT_MAX_COUNT 		3
#define S_SMS_SENT_COUNT			4

#define	S_SMS_TYPE_SEND				0
#define	S_SMS_TYPE_RECV				1

#define	S_SMS_SEND_FAIL				0
#define	S_SMS_SEND_SUCCESS			1

#define	S_SMS_DATA_SIZE				240	//LMS (Long Message Service )
#define S_SMS_DATE_SIZE				16
#define	S_SMS_PHONENUMBER_SIZE		32

#define S_SMS_R_SUCCESS				1
#define S_SMS_R_FAIL				-1
#define S_SMS_R_NOTFOUND			0

//======================================
// Phone Book
//======================================
#define	S_PB_MAX_COUNT				0x01
#define	S_PB_COUNT					0x02

#define S_PB_R_SUCCESS				1
#define S_PB_R_FAIL					-1
#define S_PB_R_EMPTY				0
#define S_PB_R_FULL					0

//======================================
// Call History
//======================================
#define	S_CH_RECEIVED_MAX_COUNT		0x01
#define	S_CH_RECEIVED_COUNT			0x02
#define	S_CH_SENT_MAX_COUNT			0x03
#define	S_CH_SENT_COUNT				0x04

#define S_CH_R_SUCCESS				1
#define S_CH_R_FAIL					-1

//======================================
//	LCD Type Definition
//======================================
#define S_LCD_1BIT_BW		0
#define S_LCD_2BIT_GRAY	1	// 4 Gray
#define S_LCD_4BIT_GRAY	2	// 16 Gray
#define S_LCD_4BIT_COLOR	3	// 16 Color
#define S_LCD_8BIT_COLOR	4	// 256 Color
#define S_LCD_12BIT_COLOR	5	// 4K Color
#define S_LCD_16BIT_COLOR	6	// 64K Color
#define S_LCD_18BIT_COLOR	7
#define S_LCD_24BIT_COLOR	8

//======================================
//	SetSystemOperation
//======================================
#define	S_SSO_FLIPDOWNEXIT			0x01
#define	S_SSO_GIGAMODE				0x02
#define S_SSO_SHOWANN				0x03
#define S_SSO_GIGA_VIRTUALKEYMODE	0x04

#define S_SSO_ON					1
#define S_SSO_OFF					0

#define S_SSO_R_SUCCESS				1
#define S_SSO_R_FAIL				-1

//======================================
//	strEdit return value
//======================================
#define S_STREDIT_R_SUCCESS	1
#define S_STREDIT_R_FAIL	0

//======================================
//	strEdit return option
//======================================
#define S_STREDIT_MODALESS_NONKEY   0x00
#define S_STREDIT_MODALESS_KEY      0x01
#define S_STREDIT_MODAL_NONKEY      0x02

/*
	VIRTUAL KEY 정의

*/

// Define GNEX Virtual Key
#define SWAP_KEY_VIRUP				0x98
#define SWAP_KEY_VIRDOWN			0x99
#define SWAP_KEY_VIRLEFT			0x9A
#define SWAP_KEY_VIRRIGHT			0x9B
#define SWAP_KEY_VIRFIRE			0x9C
#define SWAP_KEY_VIRGAME_A			0x9D
#define SWAP_KEY_VIRGAME_B			0x9E
#define SWAP_KEY_VIRGAME_C			0x9F
#define SWAP_KEY_VIRGAME_D			0xA0

// Define GNEX Virtual Long Key
#define SWAP_KEY_VIRUP_L			0xA1
#define SWAP_KEY_VIRDOWN_L			0xA2
#define SWAP_KEY_VIRLEFT_L			0xA3
#define SWAP_KEY_VIRRIGHT_L			0xA4
#define SWAP_KEY_VIRFIRE_K_L		0xA5
#define SWAP_KEY_VIRGAME_A_L		0xA6
#define SWAP_KEY_VIRGAME_B_L		0xA7
#define SWAP_KEY_VIRGAME_C_L		0xA8
#define SWAP_KEY_VIRGAME_D_L		0xA9


//======================================
//	strEdit return option
//======================================
#define S_HTTP_MAX_HANDLE	3
#define S_HTTP_R_SUCCESS	1
#define S_HTTP_R_FAIL		-1
#define S_HTTP_E_CONNECT	6
#define S_HTTP_E_READ		7
#define S_HTTP_E_R_SUCCESS	1
#define S_HTTP_E_R_FAIL		0





#endif