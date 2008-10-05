const string Names[] = {
	"그사람",
	"저사람",
	"체리",
	"가브리엘",
	"도리스"
};

const string Messages[] = {
	"학교가서 뭐하게?",
	"어 심심해.",
	"밥먹은지 얼마나 됐다고 또 먹을라고?",
	"피곤하면 집에나 가.",
	"반드시 출력",
	"대화테스트 끝"
};

const string SelectMessages[] = {
	"학교가자",
	"심심하냐",
	"밥먹으러 가자",
	"피곤해"
};

const int EventLine[] = {
	1,0,0,1,2,3,		//DrawQuestion(Variable[0], SelectMessages[0, 1, 2, 3])

	3,0,0,4,			//If(0 == Variable[0]) Goto(EventPointer + 4)
	2,0,				//	SetCurrentName(Names[0])	: 이름 = "누구?"
	0,0,				//	DrawMessages(Messages[0])	: "학교가서 뭐하게?"

	3,1,0,4,			//If(1 == Variable[0]) Goto(EventPointer + 4)
	2,1,				//	SetCurrentName(Names[1])	: 이름 = "바바"
	0,1,				//	DrawMessages(Messages[1])	: "어 심심해."

	3,2,0,4,			//If(2 == Variable[0]) Goto(EventPointer + 4)
	2,2,				//	SetCurrentName(Names[2])	: 이름 = "알리바바와 42개의 주전자"
	0,2,				//	DrawMessages(Messages[2])	: "밥먹은지 얼마나 됐다고 또 먹을라고?"

	3,3,0,4,			//If(3 == Variable[0]) Goto(EventPointer + 4)
	2,3,				//	SetCurrentName(Names[3])	: 이름 = "그사람"
	0,3,				//	DrawMessages(Messages[3])	: "피곤하면 집에나 가."

	2,-1,				//SetCurrentName(NONE)		: 이름 = 없음
	0,4,				//DrawMessages(Messages[4])	: "반드시 출력"
	0,5,				//DrawMessages(Messages[5])	: "대화테스트 끝"

	5,0,1,				//배경이미지 교체
	5,1,2,
	6,0,1,				//케릭터이미지 교체
	6,1,2,
	6,2,3,
	-1					//END
};
