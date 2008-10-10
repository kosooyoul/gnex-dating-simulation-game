const int MONTH[12] = {31, 28, 31, 30, 31, 30,
					   31, 31, 30, 31, 30, 31};

//그날까지 총 일수
int GetTotalDay(int Year, int Month, int Day){
	int Total = 0;
	int i;

	//윤년의 수
	for(i = 1; i < Year ; i++)
	{
		if(((Year % 4 == 0) && (Year % 100 != 0)) || (Year % 400 == 0))
		{
			Total++;
		}
	}

	//올해가 윤년이고 이번달이 2월 이후라면
	if((((Year % 4 == 0) && (Year % 100 != 0)) || (Year % 400 == 0)) && Month > 2)
		{
			Total++;
		}
		for(i = 0; i < Month - 1; i++)
		{
			Total += MONTH[i];
	}

	Total += Year * 365;				//+年
	Total += Day;						//+日

	return Total;
}

//요일 계산
int GetWeek(int Year, int Month, int Day)
{
	return GetTotalDay(Year, Month, Day) % 7;
}

void ScreenEffect(int Type, int Count){
	
	switch(Type){
		//페이드인-페이드아웃
		case 0:
			switch(Count){
					case 0:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,3);break;
					case 1:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,2);break;
					case 2:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,1);break;
					case 3:
					case 4:
					case 5:
					case 6:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,0);break;
					case 7:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,1);break;
					case 8:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,2);break;
					case 9:FillRectEx(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y2,3);break;
			}
			break;

		//눈 깜빡
		case 1:
			switch(Count){
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:	FillRect(MAP_POS_X1,MAP_POS_Y2,MAP_POS_X2,MAP_POS_Y2-MAP_POS_Y2/MOVE_EFFECT_COUNT*(Count+1));
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y1+MAP_POS_Y2/MOVE_EFFECT_COUNT*(Count+1));
						FillRect(MAP_POS_X2,MAP_POS_Y1,MAP_POS_X2-MAP_POS_X2/MOVE_EFFECT_COUNT*(Count+1),MAP_POS_Y2);
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X1+MAP_POS_X2/MOVE_EFFECT_COUNT*(Count+1),MAP_POS_Y2);
						break;

				case 5:
				case 6:
				case 7:
				case 8:
				case 9:	FillRect(MAP_POS_X1,MAP_POS_Y2,MAP_POS_X2,MAP_POS_Y2-MAP_POS_Y2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count));
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X2,MAP_POS_Y1+MAP_POS_Y2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count));
						FillRect(MAP_POS_X2,MAP_POS_Y1,MAP_POS_X2-MAP_POS_X2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count),MAP_POS_Y2);
						FillRect(MAP_POS_X1,MAP_POS_Y1,MAP_POS_X1+MAP_POS_X2/MOVE_EFFECT_COUNT*(MOVE_EFFECT_COUNT-Count),MAP_POS_Y2);
						break;
			}
			break;
	}
}