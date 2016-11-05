// class for enemy :P
class enemy {
  float Height;
  float Colour;
  float Width;
  float x = 500; // xloc for the enemy
  float xSpeed = 3; // speed the enemy moves

  enemy() {
    Height = random(1, 50);
    Width = random(1, 50);
  }
  void controller() {
    move();
    display();
  }

  void move() {
    if (x > 0 - Width) {
      x -= xSpeed;
    }
    if (x <= 0 - Width) {
      Height = random(1, 50);
      Width = random(1, 50);
      x = width + Width;
    }
  }  
  void display() {
    pushStyle();
    fill(#00FF39);
    rect(x, height-(height/9)-Height, Width, Height);
    popStyle();
  }
  void calcSize() {
    Height = random(1, 50);
    Width = random(1, 50);
  }
}