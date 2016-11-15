player p1 = new player();
world w = new world();
enemy e = new enemy();
UI ui = new UI();

PImage PlayerImg;
PImage Hjerte3;
PImage Hjerte2;
PImage Hjerte1;

void setup() {
  fullScreen();
  frameRate(144);
  PlayerImg = loadImage("Mage128.png");
  Hjerte3 = loadImage("Hjerte3.png");
  Hjerte2 = loadImage("Hjerte2.png");
  Hjerte1 = loadImage("Hjerte1.png");
  
}

void draw() {
  w.controller();
  p1.controller();
  e.controller();
  ui.controller();
}