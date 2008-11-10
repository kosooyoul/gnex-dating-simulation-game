int MovingDirection = 0;		//자연스러운 이동을 위함
int ScrollMapX = 0;				//가로 스크롤
int ScrollMapY = 0;				//세로 스크롤

struct Map{
	int name;
	int x_start, y_start;
	int x_size, y_size;
	int backchip;				//배경 맵칩
}Area[6];

const string AreaName[6] = {"도쿄", "오사카", "교토", "후쿠오카", "오키나와", "서울"};

struct Point SubwayStation[21];

void SetSubwayStation(){
	int i;

	SubwayStation[0].X	= 32;
	SubwayStation[0].Y	= 117;
	SubwayStation[1].X	= 50;
	SubwayStation[1].Y	= 117;
	SubwayStation[2].X	= 68;
	SubwayStation[2].Y	= 117;
	SubwayStation[3].X	= 86;
	SubwayStation[3].Y	= 117;
	SubwayStation[4].X	= 102;
	SubwayStation[4].Y	= 117;

	SubwayStation[5].X	= 102;
	SubwayStation[5].Y	= 107;
	SubwayStation[6].X	= 115;
	SubwayStation[6].Y	= 107;
	SubwayStation[7].X	= 129;
	SubwayStation[7].Y	= 107;
	SubwayStation[8].X	= 129;
	SubwayStation[8].Y	= 118;
	SubwayStation[9].X	= 129;
	SubwayStation[9].Y	= 130;

	SubwayStation[10].X	= 143;
	SubwayStation[10].Y	= 130;
	SubwayStation[11].X	= 158;
	SubwayStation[11].Y	= 130;
	SubwayStation[12].X	= 167;
	SubwayStation[12].Y	= 117;
	SubwayStation[13].X	= 177;
	SubwayStation[13].Y	= 104;
	SubwayStation[14].X	= 187;
	SubwayStation[14].Y	= 91;

	SubwayStation[15].X	= 197;
	SubwayStation[15].Y	= 78;
	SubwayStation[16].X	= 207;
	SubwayStation[16].Y	= 65;
	SubwayStation[17].X	= 217;
	SubwayStation[17].Y	= 52;
	SubwayStation[18].X	= 217;
	SubwayStation[18].Y	= 39;
	SubwayStation[19].X	= 217;
	SubwayStation[19].Y	= 26;

	SubwayStation[20].X	= 231;
	SubwayStation[20].Y	= 26;

	for(i = 0; i < 21; i++){
		SubwayStation[i].X	+= -10;
		SubwayStation[i].Y	+= 65;
	}



}

//맵 영역 설정
void SetArea(){
	//도쿄
	Area[0].name = 0;
	Area[0].x_start = 0;
	Area[0].y_start = 0;
	Area[0].x_size = 20;
	Area[0].y_size = 20;
	Area[0].backchip = 249;		//풀밭142 검정85 자갈바닥58
	
	//서울
	Area[5].name = 5;
	Area[5].x_start = 20;//20;
	Area[5].y_start = 0;//40;
	Area[5].x_size = 20;//9;
	Area[5].y_size = 20;//11;
	Area[5].backchip = 249;		//풀밭142 검정85 자갈바닥58

	//오사카
	Area[1].name = 1;
	Area[1].x_start = 0;//20;
	Area[1].y_start = 20;//30;
	Area[1].x_size = 20;//9;
	Area[1].y_size = 20;//11;
	Area[1].backchip = 249;		//풀밭142 검정85 자갈바닥58
	
	//쿄토
	Area[2].name = 2;
	Area[2].x_start = 20;//20;
	Area[2].y_start = 20;//30;
	Area[2].x_size = 20;//9;
	Area[2].y_size = 20;//11;
	Area[2].backchip = 249;		//풀밭142 검정85 자갈바닥58

	//후쿠오카
	Area[3].name = 3;
	Area[3].x_start = 0;//20;
	Area[3].y_start = 40;//30;
	Area[3].x_size = 20;//9;
	Area[3].y_size = 20;//11;
	Area[3].backchip = 249;		//풀밭142 검정85 자갈바닥58

	//오키나와
	Area[4].name = 4;
	Area[4].x_start = 20;//20;
	Area[4].y_start = 40;//30;
	Area[4].x_size = 20;//9;
	Area[4].y_size = 20;//11;
	Area[4].backchip = 249;		//풀밭142 검정85 자갈바닥58

	SetSubwayStation();			//지하철 위치 설정

}

//맵 스크롤
void MapScroll(){
	if(ScrollMapX){
		if(ScrollMapX>0)ScrollMapX-=3;
		else ScrollMapX+=3;
	}else if(ScrollMapY){
		if(ScrollMapY>0)ScrollMapY-=3;
		else ScrollMapY+=3;
	}
}

//하위 맵 그리기 - 주인공보다 하위 맵
void DrawSubLayer(){
	int x, y;
	int TempPX;
	int TempPY;

	TempPX = Player.x - _PlayerPosition;
	TempPY = Player.y - _PlayerPosition;

	for(x=-1;x<16;x++){
		for(y=0;y<15;y++){
			if(x + TempPX >= 0 && y + TempPY >= 0 && x + TempPX < Area[Player.map].x_size && y + TempPY  < Area[Player.map].y_size)
				CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, subchip[SubLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]]);
			else
				CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, subchip[Area[Player.map].backchip]);
		}
	}
}

//상위 맵 그리기 - 맵 번호에 따라 바닥 / 장애물 / 천장이나 하늘로 출력
void DrawSupLayer(int Level){
	int x, y;
	int TempPX;
	int TempPY;
	int TempChipNum;

	TempPX = Player.x - _PlayerPosition;
	TempPY = Player.y - _PlayerPosition;
	
	switch(Level){
		case 0:	//바닥, 벽
			for(x=-1;x<16;x++){
				for(y=0;y<15;y++){
					if(x + TempPX >= 0 && y + TempPY >= 0 && x + TempPX < Area[Player.map].x_size && y + TempPY  < Area[Player.map].y_size)
						if(SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX] <= _SupChipWall)
							CopyImage(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]]);
				}
			}
			break;
		case 1:	//천장이나 하늘
			for(x=-1;x<16;x++){
				for(y=0;y<15;y++){
					//근접 셀 이미지 반투명 처리
					if(x + TempPX >= 0 && y + TempPY >= 0 && x + TempPX < Area[Player.map].x_size && y + TempPY  < Area[Player.map].y_size)
						if(SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX] > _SupChipWall){
							if(x >= 6 && y >= 6 && x <= 8 && y <= 8)CopyImageEx(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]],1,0,0,0);
							else CopyImageEx(x * 16 + ScrollMapX, y * 16 + ScrollMapY + _TopSize, supchip[SupLayer[y + Area[Player.map].y_start + TempPY][x + Area[Player.map].x_start + TempPX]],0,0,0,0);
						}
				}
			}
	}//END SWITCH(Level)
}