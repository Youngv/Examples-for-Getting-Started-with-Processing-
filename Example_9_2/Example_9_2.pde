JitterBug bug;
JitterBug jit;

void setup(){
	size(480, 120);
	smooth();
	bug = new JitterBug(width * 0.33, height/2, 50);
	jit = new JitterBug(width * 0.66, height/2, 10);
}

void draw(){
	jit.move();
	jit.display();
	bug.move();
	bug.display();	
}



