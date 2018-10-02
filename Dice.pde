int siz = 100;
int roll;
int myX;
int myY;
int y;
int x;


void setup()
{
	size(1000,1000);
	noLoop();
}
void draw()
{

	background(205);

	for(y = 0; y<1001; y +=100 ){
		for(x = 0; x<1001; x +=100 ){
			Die bob = new Die(x,y);
			bob.roll();
			bob.show();

		}

	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		int dots;
		myX = x;
		myY= y;
	}
	void roll()
	{
		roll = (int)((Math.random()*6)+ 1);
	}
	void show()
	{
		fill(255);
		rect(myX, myY, siz, siz);
		fill(0);
		if(roll == 1){
			ellipse(myX + 50, myY + 50, 10, 10);

		}else if(roll == 2){

			ellipse(myX + 25, myY + 50, 10, 10);
			ellipse(myX + 75, myY + 50, 10, 10);
		}	else if(roll == 3){

			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 50, myY + 50, 10, 10);
			ellipse(myX + 75, myY + 75, 10, 10);

		}	else if(roll == 4){

			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 75, myY + 25, 10, 10);
			ellipse(myX + 25, myY + 75, 10, 10);
			ellipse(myX + 75, myY + 75, 10, 10);

		}	else if(roll == 5){

			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 75, myY + 25, 10, 10);
			ellipse(myX + 25, myY + 75, 10, 10);
			ellipse(myX + 75, myY + 75, 10, 10);
	
			ellipse(myX + 50, myY + 50, 10, 10);

		}else if(roll == 6){

			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 25, myY + 50, 10, 10);
			ellipse(myX + 25, myY + 75, 10, 10);
			ellipse(myX + 75, myY + 25, 10, 10);
			ellipse(myX + 75, myY + 50, 10, 10);
			ellipse(myX + 75, myY + 75, 10, 10);
		


		}
	}
}
