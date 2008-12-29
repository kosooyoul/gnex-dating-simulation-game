
void DrawMenu(int MenuY)
{
	FillRect(0 , 50 + MenuY, 240, 200 + MenuY);
}

void ShowMenu(int Key)
{

	switch(Key)
	{
		case SWAP_KEY_OK:
			break;

		case SWAP_KEY_CLR:
			ChangeMode(2);
			break;

		case SWAP_KEY_UP:
			break;

		case SWAP_KEY_DOWN:
			break;

		case SWAP_KEY_LEFT:
			break;

		case SWAP_KEY_RIGHT:
			break;
	}

}