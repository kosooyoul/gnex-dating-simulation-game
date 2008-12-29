int NVROM[NV_SIZE];	//세이브용 테스트
//string gOutStr;

void ReadOption()
{
	//GetBytes(swRsRcvBuf, 0, gOutStr, 32);
	GetUserNV(NVROM, NV_SIZE);

	if (NVROM[0]!=2158) { // 최초 실행이면...
		ArrayToVar(NVROM, 0, 16, S_OP_SET);
		NVROM[0] = 2158;
		NVROM[1] = 0;	//OptionAutoSkip
		NVROM[2] = 1;	//OptionPlayBGM
		NVROM[3] = 0;	//게임중이였는지
	}
	
	OptionAutoSkip = NVROM[1];
	OptionPlayBGM = NVROM[2];
	
	PutUserNV(NVROM, NV_SIZE);
}

void SaveOption()
{
	NVROM[1] = OptionAutoSkip;	//OptionAutoSkip
	NVROM[2] = OptionPlayBGM;	//OptionPlayBGM
	PutUserNV(NVROM, NV_SIZE);
}

void ReadGame()
{
//	GetUserNV(NVROM, NV_SIZE);

//	PutUserNV(NVROM, NV_SIZE);
}

void SaveGame()
{
//	NVROM[1] = OptionAutoSkip;	//OptionAutoSkip
//	NVROM[2] = OptionPlayBGM;	//OptionPlayBGM
//	PutUserNV(NVROM, NV_SIZE);
}

