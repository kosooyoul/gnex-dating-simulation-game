struct Player
{
	int Name;
	int Gold;
}Me;

struct Nature
{
	int Year;
	int Month;
	int Day;
	int Week;

	int Hour;
	int Minute;
	
	int Weather;
}Now;

struct Event
{
	int Name;
	int Feeling;
}They[3];

void InitEvent()
{
	They[0].Name = 0;
	They[1].Name = 1;
	They[2].Name = 2;

	They[0].Feeling = 50;
	They[1].Feeling = 0;
	They[2].Feeling = -50;
}