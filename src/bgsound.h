#include "Title.ssd"
#include "Prologue.ssd"
#include "Tokyo.ssd"

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
			//PlaySound(Seoul);
			break;

		case 4:
			//PlaySound();
			break;

		case 5:
			//PlaySound();
			break;

	}
}
