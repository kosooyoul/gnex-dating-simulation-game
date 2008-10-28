struct Chara{
	int graphic;
	int map;
	int	x, y;
	int direction;
	int frame;

	string Name;

	int Gold;
}Player;

//주인공 초기화
void InitPlayer(){
	int i;	//테스트

	Player.graphic = 4;
	Player.map = 0;
	Player.x = 11;
	Player.y = 12;
	Player.direction = 3;
	Player.frame = 2;
	
	Player.Name = "주인공";

	Player.Gold = 17400;
}

//주인공 그리기
void DrawPlayer(){

	if(ScrollMapX || ScrollMapY)
		Player.frame = (Player.frame+1) % 16;	//MOVE
	else
		Player.frame = (Player.frame) % 16;		//NOT MOVE
	CopyImage(_CenterPositionX, _CenterPositionY + _TopSize, chara[16 * Player.graphic + Player.direction*4 + Player.frame/4]); //4패턴(*) 4배 감속(/)
}
