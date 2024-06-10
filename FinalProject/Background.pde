int moonX, moonY, sunX, sunY, time;

void setup() {
  size(800, 700);
  sunX = 150;
  sunY = 200;
}

void draw(){
  background(173, 216, 230);
  hillsAndObjects();
  sunAndMoon(sunX, sunY);
  displayTime();
  reset();
}

void sunAndMoon(int x, int y){
  fill(300, 210, 0);
  ellipse(x, y, 100, 100);
}

void hillsAndObjects(){
  fill(50, 170, 80);
  ellipse(140, 600, 500, 420);
  ellipse(540, 650, 600, 580);
  fill(0, 0, 0);
  rect(10, 10, 65, 30, 10);
}

void displayTime(){
  textSize(25);
  fill(255);
  text("00:00", 15, 34);
}

void reset(){
  textSize(25);
  fill(255);
  text("reset", 15, 600);
}
