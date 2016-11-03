player p1 = new player();
world w = new world();
PImage PlayerImg;
void setup(){
fullScreen();
frameRate(60);
PlayerImg = loadImage("Mage128.png");
}

void draw(){
w.world1();
p1.display();
p1.jump();
}