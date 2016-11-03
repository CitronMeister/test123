player p1 = new player();
world w = new world();
void setup(){
fullScreen();
}

void draw(){
background(0,0,0,70);
p1.display();
p1.move();
w.world1();
}