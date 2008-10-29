const string WEATHER[] = {"맑음", "흐림", "비", "눈", "바람"};

struct Player
{
	int Name;
	int Gold;
}Me;

struct Date{
	int Year;
	int Month;
	int Day;
	int Week;
	int Hour;
	int Minute;
};

struct Nature
{
	struct Date Today;
	int Weather;
}Now;

void InitNature(){
	Now.Today.Year	= 2008;
	Now.Today.Month	= 12;
	Now.Today.Day		= 25;
	Now.Today.Hour	= 11;
	Now.Today.Minute	= 00;
	Now.Weather	= 0;
}

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