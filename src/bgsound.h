#include "Title.ssd"
#include "Prologue.ssd"
#include "Tokyo.ssd"
#include "bgm1.ssd"
#include "bgm2.ssd"
#include "bgm3.ssd"

int PlayingBGM = -1;

void PlayMusic(int MusicNumber){
	
	if(MusicNumber != -1){
		PlayingBGM = MusicNumber;
	}

	switch(MusicNumber){
		case -1:
			StopSound();
			break;
		case 0:
			PlaySound(Title);
			break;

		case 1:
			PlaySound(Prologue);
			break;

		case 2:
			PlaySound(Tokyo);
			break;

		case 3:
			PlaySound(bgm1);
			break;

		case 4:
			PlaySound(bgm2);
			break;

		case 5:
			PlaySound(bgm3);
			break;

		case 6:
			//PlaySound(후쿠오카);
			break;

		case 7:
			//PlaySound(오키나와);
			break;

	}
}
