void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	int x = 50;
	int y = 10;
	
	while(x < 450){
	Die scum = new Die(x,150);
	scum.show();
	x = x+70;	
	}

		
	


	
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int rollNum, myX, myY,numDots;

	
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
		fill(0);

		if(rollNum == 1)
		{
			rollOne();
			numDots = 1;
		}
			
		else if(rollNum ==2)
		{
			rollTwo();
			numDots = 2;	
		}
			
		else if(rollNum == 3)
		{
			rollOne();
			rollTwo();
			numDots = 3;	
		}

		else if(rollNum == 4)
		{
			rollFour();	
			numDots = 4;
		}

		else if(rollNum ==5)
		{
			rollFour();
			rollOne();
			numDots = 5;
		}
			
		else
		{
			rollFour();
			rollSix();
			numDots = 6;
		}


		
		
	}
	void rollOne(){
		ellipse(myX+25,myY+25,5,5);
	}
	void rollTwo(){
		ellipse(myX+10,myY+10,5,5);
		ellipse(myX+40,myY+40,5,5);		
	}
	void rollFour(){
		ellipse(myX+10,myY+10,5,5);
		ellipse(myX+40,myY+40,5,5);	
		ellipse(myX+10,myY+40,5,5);
		ellipse(myX+40,myY+10,5,5);
	}
	void rollSix(){
		ellipse(myX+10,myY+25,5,5);
		ellipse(myX+40,myY+25,5,5);
	}
}

