float x = 180;
float y = 400;
float bodyHeight = 153;
float neckHeight = 56;
float radius = 45;
float angle = 0.0;

void setup(){
	size(360, 480);
	smooth();
	ellipseMode(RADIUS);
	background(204);			
}

void draw(){
	x += random(-4, 4);
	y += random(-1, 1);

	neckHeight = 80 + sin(angle) * 30;
	angle += 0.05;

	float ny = y - bodyHeight - neckHeight - radius;

	//脖子
	stroke(102);
	line(x + 2, y - bodyHeight, x + 2, ny);
	line(x + 12, y - bodyHeight, x + 12, ny);
	line(x + 22, y - bodyHeight, x + 22, ny);
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
	fill(102);
	rect(x - 45, y - bodyHeight + 17, 90, 6);
	//头部
	fill(0);
	ellipse(x + 12, ny, radius, radius);
	fill(255);
	ellipse(x+24, ny-6, 14, 14);
	fill(0);
	ellipse(x+24, ny-6, 3, 3);
}





