int moonX, moonY, sunX, sunY;

void setup() {
  size(800, 700);
  sunX = 400;
  sunY = 200;
  moonX = 100;
  moonY = 445;
}

void draw(){
  background(173, 216, 230);
  ellipse(590, 376, 30, 30);
  sunAndMoon(sunX, sunY, moonX, moonY);
  hillsAndObjects();
  if (sunX >= 400 && sunY >= 200 && sunX <= 780 && sunY <= 680){
  sunX++;
  sunY++;
  }
  if (sunX >= 590 && sunY >= 376 && moonY >= 200){
    moonX++;
    moonY--;
  }
  reset();
}

void sunAndMoon(int sunx, int suny, int moonx, int moony){
  fill(300, 210, 0);
  ellipse(sunx, suny, 100, 100);
  fill(200);
  ellipse(moonx, moony, 100, 100);
}

void hillsAndObjects(){
  fill(50, 170, 80);
  ellipse(140, 600, 500, 420);
  ellipse(540, 650, 600, 580);
  fill(0, 0, 0);
  rect(726, 14, 65, 30, 10);
}

void reset(){
  textSize(25);
  fill(255);
  text("reset", 730, 34);
}

void mouseClicked(){
  sunX = 400;
  sunY = 200;
  moonX = 100;
  moonY = 445;
}
