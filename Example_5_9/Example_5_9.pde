float x;
float y;
float px;
float py;
float easing = 0.05;

void setup(){
	size(480, 120);
	smooth();
	stroke(0, 102);
}

void draw(){
	float targerX = mouseX;
	x += (targerX - x) * easing;
	float targerY = mouseY;
	y += (targerY - y) * easing;
	float weight = dist(x, y, px, py);
	strokeWeight(weight);
	line(x, y, px, py);
	py = y;
	px = x;
}
