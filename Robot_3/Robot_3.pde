int x = 60;
int y = 420;
int bodyHeight = 160;
int neckHeight = 70;
int radius = 45;

float easing = 0.02;



void setup(){
	size(360, 480);
	smooth();
	strokeWeight(2);
	ellipseMode(RADIUS);
}

void draw(){
	int targetX = mouseX;
	x += (targetX - x) * easing;

	if (mousePressed) {
		neckHeight = 16;
		bodyHeight = 90;
			
	} else {
		neckHeight = 70;
		bodyHeight = 160;
	}	

	float ny = y - bodyHeight - neckHeight - radius;

	background(204);

	//脖子
	stroke(102);
	line(x + 12, y - bodyHeight, x + 12, ny);
	//天线
	line(x + 12, ny, x - 18, ny - 43);
	line(x + 12, ny, x + 42, ny - 99);
	line(x + 12, ny, x + 78, ny + 15);
	//身体
	noStroke();
	fill(102);
	ellipse(x, y - 33, 33, 33);
	fill(0);
	rect(x - 45, y - bodyHeight, 90, bodyHeight - 33);

	//头部
	fill(0);
	ellipse(x + 12, ny, radius, radius);
	fill(255);
	ellipse(x+24, ny-6, 14, 14);
	fill(0);
	ellipse(x+24, ny-6, 3, 3);
}






