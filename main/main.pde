bil bil1 = new bil();
world w = new world();
void setup(){
fullScreen();
}

void draw(){
background(0,0,0,70);
bil1.display();
bil1.move();
w.world1();
}