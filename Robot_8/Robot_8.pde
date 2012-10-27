Robot[] bots;

void setup(){
	size(720, 480);
	PShape robotShape = loadShape("robot1.svg");
	bots = new Robot[20];

	for (int i = 0; i<bots.length; i++){
		float x = random(-40, width-40);
		float y = map(i, 0, bots.length, -100, height-200);
		bots[i] = new Robot(robotShape, x, y);
	}
	smooth();	
}

void draw(){
	background(204);

	for (int i = 0; i<bots.length; i++){
		bots[i].update();
		bots[i].display();
	}
}

class Robot {
	float xpos;
	float ypos;
	float angle;
	PShape botShape;
	float yoffset = 0.0;

	Robot(PShape shape, float tempX, float tempY) {
		botShape = shape;
		xpos = tempX;
		ypos = tempY;
		angle = random(0, TWO_PI);
	}

	void update() {
		angle += 0.05;
		yoffset = sin(angle) * 20;
	}

	void display() {
		shape(botShape, xpos, ypos + yoffset);
	}
}