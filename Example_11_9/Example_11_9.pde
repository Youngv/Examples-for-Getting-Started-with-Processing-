import processing.serial.*;

Serial port;
float val;
float angle;
float radius;

void setup(){
	size(440, 440);
	frameRate(30);
	strokeWeight(2);
	smooth();
	println(Serial.list());
	String arduinoPort = Serial.list()[0];
	port = new Serial(this, arduinoPort, 9600);
	background(0);
}

void draw(){
	if (port.available() > 0){
		val = port.read();
		radius = map(val, 0, 255, 0, height * 0.45);
	}

	int middleX = width/2;
	int middleY = height/2;
	float x = middleX + cos(angle) * height/2;
	float y = middleY + sin(angle) * height/2;
	stroke(0);
	line(middleX, middleY, x, y);

	x = middleX + cos(angle) * radius;
	y = middleY + sin(angle) * radius;
	stroke(255);
	line(middleX, middleY, x, y);

	angle += 0.01;
}
