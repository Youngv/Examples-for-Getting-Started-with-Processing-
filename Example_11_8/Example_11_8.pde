import processing.serial.*;

Serial port;
float val;
int x;
float easing = 0.05;
float easedVal;

void setup(){
	size(440, 440);
	frameRate(30);
	smooth();
	println(Serial.list());
	String arduinoPort = Serial.list()[0];
	port = new Serial(this, arduinoPort, 9600);
	background(0);
}

void draw(){
	if (port.available() > 0){
		val = port.read();
		val = map(val, 0, 255, 0, height);
	}

	float targerVal = val;
	easedVal += (targerVal - easedVal) * easing;
 	
 	stroke(0);
 	line(x, 0, x, height);
 	stroke(0);
 	line(x+1, 0, x+1, height);
 	line(x, 220, x, val);
 	line(x, 440, x, easedVal + 220);

 	x++;
 	if (x > width){
 		x = 0;
 	}
}
