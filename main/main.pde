player p1 = new player();
world w = new world();
void setup(){
fullScreen();
frameRate(60);
}

void draw(){
w.world1();
p1.display();
p1.jump();
}