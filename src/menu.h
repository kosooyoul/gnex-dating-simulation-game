
void DrawMenu(int MenuX, int MenuY)
{
	FillRect(MenuX, MenuY, 50 + MenuX, 100 + MenuY);




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