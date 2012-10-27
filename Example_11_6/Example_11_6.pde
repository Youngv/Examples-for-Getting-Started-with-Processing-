//注意：这段代码是用于Arduino，而不是 Processing

int sensorPin = 0;
int val = 0;

void setup(){
	Serial.begin(9600);
}

void loop(){
	val = analogRead(sensorPin) / 4;
	Serial.print(val, BYTE);
	delay(100);	
}