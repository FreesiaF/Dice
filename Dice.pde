void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	Die scum = new Die(150,150);
	scum.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int rollNum, myX, myY;

	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		rollNum = ((int)(Math.random()*6)+1);
	}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50,10);
	}

}
