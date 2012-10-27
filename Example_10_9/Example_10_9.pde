int num = 60;
int x[] = new int[num];
int y[] = new int[num];

void setup(){
	size(240, 120);
	smooth();
	noStroke();
}

void draw(){
	background(0);
	for (int i = x.length-1; i>0; i--){
			x[i] = x[i-1];
			y[i] = y[i-1];
		}
	x[0] = mouseX;
	y[0] = mouseY;
	for (int i = 0; i<x.length; i++){
			fill(i * 4);
			ellipse(x[i], y[i], 40, 40);
		}	
}
