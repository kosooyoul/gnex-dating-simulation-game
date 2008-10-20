int PrologueEventPointer = 0;

const int PrologueEventList[] = {
0,0,
//<STEP 01>
0,1,
//검은 화면, 달리는 소리와 숨을 몰아쉬는 소리
2,0,0,
0,2,
2,1,1,
0,3,
2,0,0,
0,4,
2,1,1,
0,5,
2,0,0,
0,6,
//남자1(주인공), 여조1(혜선) => 넓은 공원의 이미지
2,2,0,
0,7,
2,3,1,
0,8,
2,2,0,
0,9,
2,3,1,
0,10,
2,2,0,
0,11,
2,3,1,
0,12,
2,2,0,
0,13,
//<STEP 02>
//남자1(승준), 여조1(혜선) => 집안의 거실 이미지
2,3,1,
0,14,
2,2,0,
0,15,
2,3,1,
0,16,
//한심해 하는 표정
2,2,0,
0,17,
2,3,1,
0,18,
2,2,0,
0,19,
2,3,1,
0,20,
2,2,0,
0,21,
2,3,1,
0,22,
2,2,0,
0,23,
2,3,1,
0,24,
2,2,0,
0,25,
2,3,1,
0,26,
//<STEP 03>
//남자1(승준), 남조1(태호) => 회사
2,4,1,
0,27,
2,2,0,
0,28,
2,4,1,
0,29,
2,2,0,
0,30,
2,4,1,
0,31,
2,2,0,
0,32,
2,4,1,
0,33,
2,2,0,
0,34,
2,6,1,
0,35,
2,2,0,
0,36,
2,4,1,
0,37,
//<STEP 04>
//남자1(승준), 남조2(부장) => 회사
//[똑똑]
2,2,0,
0,38,
2,5,1,
0,39,
2,2,0,
0,40,
2,5,1,
0,41,
2,2,0,
0,42,
2,5,1,
0,43,
0,44,
2,2,0,
0,45,
2,5,1,
0,46,
2,5,1,
0,47,
0,48,
2,5,1,
0,49,
2,2,0,
0,50,
2,5,1,
0,51,
2,2,0,
0,52,
2,5,1,
0,53,
2,2,0,
0,54,
2,5,1,
0,55,
2,2,0,
0,56,
2,5,1,
0,57,
//<SELECT>
2,2,0,
0,58,
2,5,1,
0,59,
2,2,0,
0,60,
2,5,1,
0,61,
//<STEP 03>
//남자1(승준), 남조1(태호) => 회사
2,4,1,
0,62,
2,2,0,
0,63,
2,4,1,
0,64,
2,2,0,
0,65,
2,4,1,
0,66,
2,2,0,
0,67,
//[다음날] MAIN BLOCK
//<STEP 05>
//남자1(승준), 남조1(태호) => 사람이 많이 보이는 장소
2,4,1,
0,68,
2,2,0,
0,69,
2,4,1,
0,70,
2,2,0,
0,71,
2,4,1,
0,72,
2,2,0,
0,73,
//<IMAGE 01> 양복을 입은 사람들 가운데 클로즈업된 사람
2,4,1,
0,74,
0,75,
2,2,0,
0,76,
2,4,1,
0,77,
//<IMAGE 01-1> 얼굴만 클로즈 업
2,2,0,
0,78,
2,4,1,
0,79,
2,2,0,
0,80,
2,4,1,
0,81,
2,2,0,
0,82,
2,4,1,
0,83,
2,2,0,
0,84,
0,85,
0,86,
0,87,
0,88,
//<프롤로그(완)>
-1
};

void RunPrologue()
{
	DrawBackground();		//배경표시
	RunPrologueEvent();		//프롤로그 이벤트수행 및 수행결과 표시
}



void RunPrologueEvent()
{
	switch(PrologueEventList[PrologueEventPointer++])
	{
		case -1:	//이벤트 종료
			PrologueEventPointer = 0;
			ChangeGameMode(2);
			break;

		case 0:		//대화
			if(NextKey == SWAP_KEY_OK)
			{
				DrawMessages(PrologueEventList[PrologueEventPointer++]);
			}
			else
			{
				DrawMessages(PrologueEventList[PrologueEventPointer--]);
			}
			NextKey = -1;
			break;


		case 1:		//선택지
			DrawQuestion(PrologueEventList[PrologueEventPointer++],	PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++]);
			if(NextKey != SWAP_KEY_OK)
			{
				PrologueEventPointer -= 7;
			}
			NextKey = -1;
			break;

		case 2:
			SetCurrentName(PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++]);
			break;

		case 3:		//조건분기_변수 if(s==v[vn])goto
			PrologueEventPointer += 3 + IfEqual(PrologueEventList[PrologueEventPointer], PrologueEventList[PrologueEventPointer+1], PrologueEventList[PrologueEventPointer+2]);
			break;

		case 4:		//조건분기_변수 if(s!=v[vn])goto
			PrologueEventPointer += 3 + ElseEqual(PrologueEventList[PrologueEventPointer], PrologueEventList[PrologueEventPointer+1], PrologueEventList[PrologueEventPointer+2]);
			break;

		case 5:		//배경화면 교체
			SetBackground(PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++]);
			if(EffectFrame < MOVE_EFFECT_COUNT)
			{
				PrologueEventPointer -= 4;
			}
			else
			{
				EffectFrame = 0;
			}
			break;

		case 6:		//케릭터 교체
			SetChara(PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++]);
			break;

		default:	//이벤트가 종료되었거나 없는 이벤트 호출시 초기화
			PrologueEventPointer = 0;
	}
}