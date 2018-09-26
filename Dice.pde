int totalSumOne = 0;
int rolledOne = 0;
int rolledTwo = 0;
int rolledThree = 0;
int rolledFour = 0;
int rolledFive = 0;
int rolledSix = 0;
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
			int diceOne = scum.rollNum;
			if (scum.rollNum == 1)
				rolledOne = rolledOne+1;
			if (scum.rollNum == 2)
				rolledTwo = rolledTwo+1;
			if (scum.rollNum == 3)
				rolledThree = rolledThree+1;
			if (scum.rollNum == 4)
				rolledFour = rolledFour+1;
			if (scum.rollNum == 5)
				rolledFive = rolledFive+1;
			if (scum.rollNum == 6)
				rolledSix = rolledSix+1;



			
			
		}
		if (rolledOne==1 && rolledTwo == 1 && rolledThree ==1
				&& rolledFour==1&& rolledFive ==1)
		{
			text("Straight!",50,y-8);
		}

				
	else if (rolledFive == 3 || rolledOne == 3 ||rolledTwo == 3 
				|| rolledThree ==3 || rolledSix ==3 || rolledFour == 3)
		{
		text("three of a kind!",50,y-8);

		}
				
	else if (rolledFive == 2 || rolledOne == 2 ||rolledTwo == 2 
					|| rolledThree ==2 || rolledSix ==2 || rolledFour == 2)
		{
			text("two of a kind!", 50,y-8);
		}

				
	else{
			text("one of a kind", 50, y-8);
		}
		
			
	}
	int totalSum = totalSumOne;
		
	text("Total: "+totalSum, 440,485);
	
}
void mousePressed()
{
	redraw();
	totalSumOne = 0;
	rolledOne = 0;
	rolledTwo = 0;
	rolledThree=0;
	rolledFour = 0;
	rolledFive = 0;
 	rolledSix = 0;

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

