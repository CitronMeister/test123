class player {   
  int X = 50; // player xLoc
  float YChange; // players change in Y when jumping
  int Height = 50; // how tall is the player 
  boolean jump = false; // bool to test for going up or down
  int jumpSpeed = 8; // lower == faster, higher == slower
  int jumpHeight = 300; // how many pixels can player jump
  int health = 3; // amount of health the player has

  void controller() {
    if (gameStarted >= 1) {
      display();
      jump();
      ifHit();
      ifDead();
      //debugPlayer(); // Debug if ever needed.
    } else {
      ifDead();
    }
  }
  void display() {
    // this is just a model behind the player which the picture fills out and is simply just the hitbox of the player
    //rect(X, height-(height/9)-Height-YChange, Height, Height);
    image(PlayerImg, X, height-(height/9)-Height-YChange, Height, Height);
  }

  void jump() {
    if (keyPressed) {
      if (YChange == 0) {
        if (key == ' ') {
          if(gameStarted == 2){
          jump = true;
          }
          if(gameStarted == 1){
            gameStarted = 2;
          }
        }
      }
    }
    if (jump == true) {
      YChange += jumpSpeed;
      if (YChange >= jumpHeight) {
        jump = false;
      }
    } else if (jump == false && YChange > 0) {
      YChange -= jumpSpeed;
    }
  }
  void ifHit() {
    // when the player is hit, the player returns to the ground, while losing a life.
    if (e.x < X + Height && e.x > X && YChange < e.Height || e.x + e.Width < X + Height && e.x + e.Width > X && YChange < e.Height) {
      health--;
      e.x = width;
      e.Height = random(1, 50);
      e.Width = random(1, 50);
      jump = false;
    }
  }
  void ifDead() {
    if (health < 1) {
      gameStarted = -1;
    }
  }
  void debugPlayer() {
    text(height-(height/9) - YChange, width/2, height/2);
    text(height-(height/9) - e.Height, width/2, height/2 + 40);
  }
}