// class for enemy :P
class enemy {
  float Height;
  float Colour;
  float Width;
  float x = 500; // xloc for the enemy
  float xSpeed = 8; // speed the enemy moves

  enemy() {
    Height = random(30, 150);
    Width = random(30, 150);
  }
  void controller() {
    if (gameStarted == 1) {
      move();
      display();
    }
  }

  void move() {
    if (x > 0 - Width) {
      x -= xSpeed;
      
    }
    if (x <= 0 - Width) {
      calcSize();
      x = width + Width;
      points += 1;
    }
  }  
  void display() {
    pushStyle();
    fill(#00FF39);
    rect(x, height-(height/9)-Height, Width, Height);
    popStyle();
  }
  void calcSize() {
    Height = random(30, 150);
    Width = random(30, 150);
  }
}