player p1 = new player();
world w = new world();
enemy e = new enemy();

PImage PlayerImg;

void setup() {
  fullScreen();
  frameRate(60);
  PlayerImg = loadImage("Mage128.png");
}

void draw() {
  w.world1();
  p1.controller();
  e.controller();

}