size(480, 120);
background(0);
smooth();
fill(255);
stroke(102);
for (int y = 20; y <= height - 20; y += 10){
	for (int x = 0; x <= width - 20; x += 10){
		ellipse(x, y, 4, 4);
		line(x, y, 240, 60);
	}
}
