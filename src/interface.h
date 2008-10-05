int Background[2] = {0, 0};
int BackChara[3] = {0, 0, 0};

void DrawBackground()
{
	int i;
	string temp;

	for(i = 0; i < 2; i++)
	{
		//이미지 출력 코드
		//임시->
		MakeStr1(temp, "BackImageNumber=%d", Background[i]);
		DrawStr(5, 200 + i * 18, temp);
		//->임시
	}


	for(i = 0; i < 3; i++)
	{
		//이미지 출력 코드
		//임시->
		MakeStr1(temp, "CharaImageNumber=%d", BackChara[i]);
		DrawStr(125, 200 + i * 18, temp);
		//->임시
	}

}