int PrologueEventPointer = 0;

void RunPrologue(){
	DrawBackground();		//배경표시
	RunPrologueEvent();		//프롤로그 이벤트수행 및 수행결과 표시
}

void RunPrologueEvent(){
	switch(PrologueEventList[PrologueEventPointer++]){
		case -1:	//이벤트 종료
			PrologueEventPointer = 0;
			ChangeMode(2);
			break;

		case 0:		//대화 
			if(NextKey == SWAP_KEY_OK && EventMode == 2){
				DrawMessages(PrologueEventList[PrologueEventPointer++]);
				EffectFrame = 0;
				SelectedAnswer = 0;
				SecondSelect = 0;
				EventMode = 0;
			}else{
				DrawMessages(PrologueEventList[PrologueEventPointer--]);

				//자동 스킵 옵션 설정한 경우
				if(OptionAutoSkip){
					if(EffectFrame > SKIP_COUNT){
						PrologueEventPointer += 2;
						EffectFrame = 0;
						SelectedAnswer = 0;
						SecondSelect = 0;
						EventMode = 0;
					}
				}
			}
			NextKey = -1;
			break;

		case 1:		//선택지
			DrawQuestion(PrologueEventList[PrologueEventPointer++],	PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++]);
			if(NextKey != SWAP_KEY_OK){
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
			if(EffectFrame < MOVE_EFFECT_COUNT){
				PrologueEventPointer -= 4;
			}else{
				EffectFrame = 0;
			}
			break;

		case 6:		//케릭터 교체
			SetChara(PrologueEventList[PrologueEventPointer++], PrologueEventList[PrologueEventPointer++]);
			break;

		case 10:	//딜레이						 :: 매개변수 1개
			if(Delay(PrologueEventList[PrologueEventPointer]))PrologueEventPointer--;
			else PrologueEventPointer++;
			break;

		case 11:	//배경음						 :: 매개변수 1개
			SetBGM(PrologueEventList[PrologueEventPointer++]);
			break;

		case 30:	//지하철						 :: 매개변수 없음
			if(!Subway(PrologueEventList[PrologueEventPointer]))PrologueEventPointer--;
			NextKey = -1;
			break;

		case 31:	//항공기						 :: 매개변수 없음
			if(!Airport(PrologueEventList[PrologueEventPointer]))PrologueEventPointer--;
			NextKey = -1;
			break;

		case 32:	//챕터표시
			if(DrawChapter(PrologueEventList[PrologueEventPointer++]))PrologueEventPointer-=2;
			break;

		case 33:	//아이캐치
			if(DrawEyeCatch(PrologueEventList[PrologueEventPointer++]))PrologueEventPointer-=2;
			break;

		case 99:	//에러처리						 :: 매개변수 없음
			PrologueEventPointer++;
			break;

		default:	//이벤트가 종료되었거나 없는 이벤트 호출시 초기화
			PrologueEventPointer = 0;
	}
}