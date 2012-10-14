int x = 215;

void setup(){
	size(480, 120);
}

void draw(){
	if (keyPressed && (key == CODED)){
		if (keyCode == LEFT){
			x--;
		} else if (keyCode == RIGHT) {
			x++;
		}
	}
	rect(x, 45, 50, 50);
}
