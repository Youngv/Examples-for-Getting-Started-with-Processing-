JitterBug bug;

void setup(){
	size(480, 120);
	smooth();
	bug = new JitterBug(width/2, height/2, 20);
}

void draw(){
	bug.move();
	bug.display();	
}

class JitterBug {
	float x;
	float y;
	int diameter;
	float speed = 2.5;

	JitterBug(float tempX, float tempY, int tempDiameter) {
		x = tempX;
		y = tempY;
		diameter = tempDiameter;
	}

	void move() {
		x += random(-speed, speed);
		y += random(-speed, speed);
	}

	void display() {
		ellipse(x, y, diameter, diameter);
	}
}
