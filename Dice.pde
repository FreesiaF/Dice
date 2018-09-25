int totalSumOne = 0;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	
	background(206,52,52);
	
	
	for(int y =20; y <=500; y= y+100)
	{
		for(int x = 50; x < 450;x = x+90)
		{
			Die scum = new Die(x,y);
			scum.show();
			
			totalSumOne = scum.rollNum + totalSumOne;
			System.out.println(totalSumOne);	
		}
			
	}
	int totalSum = totalSumOne;
	
	
	text("Total: "+totalSum, 440,485);
	
}
void mousePressed()
{
	redraw();
	totalSumOne = 0;
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
			
		}
			
		else if(rollNum ==2)
		{
			rollTwo();
				
		}
			
		else if(rollNum == 3)
		{
			rollOne();
			rollTwo();
				
		}

		else if(rollNum == 4)
		{
			rollFour();	
			
		}

		else if(rollNum ==5)
		{
			rollFour();
			rollOne();
			
		}
			
		else
		{
			rollFour();
			rollSix();
			
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

