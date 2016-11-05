class player {   
  int playerX = 50; // player xLoc
  float playerYChange; // players change in Y when jumping
  int playerHeight = 50; // how tall is the player 
  boolean jump = false; // bool to test for going up or down
  int jumpSpeed = 4; // lower == faster, higher == slower
  int jumpHeight = 300; // how many pixels can player jump
  int health = 3; // amount of health the player has

  void controller() {
    UI();
    display();
    jump();
    ifHit();
    debugPlayer();
  }

  void UI() {
    pushStyle();
    textSize(24);
    text(health, 100, 100); // health shown
    popStyle();
  }

  void display() {
    image(PlayerImg, playerX, height-(height/9)-playerHeight-playerYChange, playerHeight, playerHeight);
  }

  void jump() {
    if (keyPressed) {
      if (playerYChange == 0) {
        if (key == ' ') {
          jump = true;
        }
      }
    }
    if (jump == true) {
      playerYChange += jumpSpeed;
      if (playerYChange >= jumpHeight) {
        jump = false;
      }
    } else if (jump == false && playerYChange > 0) {
      playerYChange -= jumpSpeed;
    }
  }
  void ifHit() {
    if (playerX >= e.x && height-(height/9) - playerYChange > height-(height/9) - e.Height) {
      health--;
      e.x = width;
      e.Height = random(1, 50);
      e.Width = random(1, 50);
    }
  }
  void debugPlayer() {
    text(height-(height/9) - playerYChange, width/2, height/2);
    text(height-(height/9) - e.Height, width/2, height/2 + 40);
  }
}