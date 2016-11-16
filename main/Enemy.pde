// class for enemy :P
class enemy {
  float Height;
  float Colour;
  float Width;
  float x = 1000; // xloc for the enemy
  float xSpeed = 10; // speed the enemy moves

  enemy() {
    Height = random(30, 150);
    Width = random(30, 150);
  }
  void controller() {
    if (gameStarted >= 1) {
      move();
      display();
    }
  }

  void move() {
    if (gameStarted == 2) {
      if (x > 0 - Width) {
        x -= xSpeed;
      }
      if (x <= 0 - Width) {
        calcSize();
        x = width + Width;
        points += 1;
      }
    }
  }  
  void display() {
    if (gameStarted >= 1) {
      pushStyle();
      fill(#00FF39);
      image(Enemy, x, height-(height/9)-Height, Width, Height);
      //rect(x, height-(height/9)-Height, Width, Height);
      popStyle();
    }
  }
  void calcSize() {
    Height = random(30, 150);
    Width = random(30, 150);
  }
}