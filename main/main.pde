player p1 = new player();
world w = new world();
enemy e = new enemy();

PImage PlayerImg;

void setup() {
  fullScreen();
  frameRate(144);
  PlayerImg = loadImage("Mage128.png");
  Hjerte3 = loadImage("Hjerte3.png");
  Hjerte2 = loadImage("Hjerte2.png");
  Hjerte1 = loadImage("Hjerte1.png");
  
}

void draw() {
  w.world1();
  p1.controller();
  e.controller();

}