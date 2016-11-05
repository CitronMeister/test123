// class for enemy :P
class enemy {
  float Height;
  float Colour;
  float Width;
  float x = 500; // xloc for the enemy
  float xSpeed = 3; // speed the enemy moves
  float size = 50; // size of enemy currently only one value!

  enemy() {
    Height = random(20, 50);
    Width = random(1, 50);
    size = 50;
  }
  void controller(){
    move();
    display();
  }


  void move() {
    if (x > 0 - size) {
      x -= xSpeed;
    }
    if (x <= 0 - size) {
      x = width + size;
    }
  }  
  void display() {
    pushStyle();
    fill(#00FF39);
    rect(x, height-(height/9)-Height, Width, Height);
    popStyle();
  }
}