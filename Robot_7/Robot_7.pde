Robot bot1;
Robot bot2;

void setup(){
	size(720, 480);
	bot1 = new Robot("robot1.svg", 90, 80);
	bot2 = new Robot("robot2.svg", 440, 30);
	smooth();	
}

void draw(){
	background(204);

	bot1.update();
	bot1.display();

	bot2.update();
	bot2.display();	
}
