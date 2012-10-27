import processing.serial.*;

Serial port;
float val;

void setup(){
	size(440, 220);
	println(Serial.list());
	String arduinoPort = Serial.list()[0];
	port = new Serial(this, arduinoPort, 9600);
}

void draw(){
	if (port.available() > 0){
		val = port.read();
		val = map(val, 0, 255, 0, height);
	}
	rect(40, val-10, 360, 20);
}
