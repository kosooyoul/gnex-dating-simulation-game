/*
void ReadRom()
{
	GetBytes(swRsRcvBuf, 0, gOutStr, 32);

	GetUserNV(NVROM, NV_SIZE);

	if (NVROM[0]!=2158) { // 최초 실행이면...
		ArrayToVar(NVROM, 0, 16, S_OP_SET);

		NVROM[0] = 2158;
		NVROM[1] = 5;	//EFX Volume을 5로...
		NVROM[2] = 0;	//BGM Volume을 0으로..
		NVROM[3] = 1;	//진동을 on으로.
		NVROM[4] = 0; //이어하기 stage
		NVROM[5] = 0;
	}

	gGameVolumeFX = NVROM[1];
	gGameVolumeBGM = NVROM[2];
	gGameVibrator = NVROM[3];
	// 그 다음값 줄줄이 assign
	NVROM[6] ^= 1;	// 시작시 남녀 사운드 선택

	PutUserNV(NVROM, NV_SIZE);
}

void WriteRom()
{
	NVROM[0] = 2158;
	NVROM[1] = gGameVolumeFX;
	NVROM[2] = gGameVolumeBGM;
	NVROM[3] = gGameVibrator;

	PutUserNV(NVROM, NV_SIZE);
}*/