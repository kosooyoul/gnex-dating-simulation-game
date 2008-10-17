const string Names[] = {
	"승준",
	"태호",
	"김부장",
	"바바",
	"혜선"
};

const string Messages[] = {
	/* 0*/	"프롤로그입니다.",
	/* 1*/	"プロロ―グで ございます.",
	/* 2*/	"장면 전환 테스트",
	/* 3*/	"프롤로그가 끝나면 본 게임을 시작합니다",
	/* 4*/	"여어~ 안녕하세요? 오랜만이군요.. 잘 지내고 계셨나요?",
	/* 5*/	"정말 반갑네요. 하하하..",
	/* 6*/	"엥.. 저 모르시겠어요? 정말! 모르시나요?? 모른척 하시는 거 아니시죠?",
	/* 7*/	"어라.. 내가 사람을 잘못 봤나... 죄송합니다.",
	/* 8*/	"......(할말이 없네..-_-)",
	/* 9*/	"어느 숲속의 오솔길.. 아무도 없다..",
	/*10*/	"집까지 무척 멀구나. ........(너무 멀어, 진짜 멀어, 정말멀어, 엄청 멀어, 상당히 멀어, 완전 멀어, 최고 멀어.. 뭐니..-ㅅ-;)",
	/*11*/	"집까지 거의 다온거 같네..ㅎ",
	/*12*/	"와와와 우리 태호 왔네 어서와~!!!",
	/*13*/	"헉 바바다. -ㅅ-;,.",
	/*14*/	"본 게임을 마치면 에필로그로 넘어가야 하지만, 테스트를 위해 처음 위치로  돌아갑니다.",
	/*15*/	"배경전환 효과 0번",
	/*16*/	"배경전환 효과 1번",
	/*17*/	"배경전환 효과 2번",
	/*18*/	"선택지에 따른 조건 분기 테스트"
};

const string SelectMessages[] = {
	"아! 안녕하세요!! 잘 지내셨죠?",
	"안녕하세요!! 근데 누구신지??",
	"저기.. 누구신지..?",
	"또 당신인가요? 정말 귀찮군요."
};

const int EventLine[] = {
	2,-1,0,				//SetCurrentName(NONE)			: 이름 = 없음
	0,15,				//DrawMessages(Messages[15])	:
	5,0,0,0,			//배경이미지 교체(화면전환효과 0)

	2,1,1,				//SetCurrentName(Names[1])	: 이름 = "태호"
	6,0,0,				//케릭터이미지 교체(테스트용)
	0,4,				//DrawMessages(Messages[4])	:

	1,0,4,0,1,2,3,		//DrawQuestion(Variable[0], MsgCount = 4, SelectMessages[0, 1, 2, 3])

	2,-1,0,				//SetCurrentName(NONE)			: 이름 = 없음
	0,18,				//DrawMessages(Messages[18])	:

	2,1,1,				//	SetCurrentName(Names[1])	: 이름 = "태호"
	3,0,0,2,			//If(0 != Variable[0]) Goto(EventPointer + 2)
	0,5,				//	DrawMessages(Messages[5])	:

	3,1,0,2,			//If(1 != Variable[0]) Goto(EventPointer + 2)
	0,6,				//	DrawMessages(Messages[6])	:

	3,2,0,2,			//If(2 != Variable[0]) Goto(EventPointer + 2)
	0,7,				//	DrawMessages(Messages[7])	:

	3,3,0,2,			//If(3 != Variable[0]) Goto(EventPointer + 2)
	0,8,				//	DrawMessages(Messages[8])	:

	6,0,-1,				//케릭터이미지 교체(없음)
	2,-1,0,				//SetCurrentName(NONE)			: 이름 = 없음
	0,16,				//DrawMessages(Messages[16])	:
	5,0,1,1,			//배경이미지 교체(화면전환효과 1)

	2,-1,0,				//SetCurrentName(NONE)			: 이름 = 없음
	0,9,				//DrawMessages(Messages[9])		: 
	2,0,0,				//SetCurrentName(Names[0]) 		: 이름 = "승준"
	0,10,				//DrawMessages(Messages[10])	:

	2,-1,0,				//SetCurrentName(NONE)			: 이름 = 없음
	0,17,				//DrawMessages(Messages[17])	:
	5,0,2,2,			//배경이미지 교체(화면전환효과 2)

	0,11,				//DrawMessages(Messages[11])	:
	2,3,1,				//SetCurrentName(Names[3]) 		: 이름 = "바바"
	6,0,1,				//케릭터이미지 교체(테스트용)
	0,12,				//DrawMessages(Messages[12])	:
	2,0,0,				//SetCurrentName(Names[0]) 		: 이름 = "승준"
	0,13,				//DrawMessages(Messages[13])	:
	
	2,-1,0,				//SetCurrentName(NONE)			: 이름 = 없음
	6,0,-1,				//케릭터이미지 교체(없음)
	0,14,				//DrawMessages(Messages[14])	:

	-1					//END
};

const image TESTIMG[2] = {{0,0, 0,0, 0,0, 0,0,-1}, {0,0, 0,0, 0,0, 0,0,-1}};
