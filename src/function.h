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