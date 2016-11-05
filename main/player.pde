class player {   
  int playerX = 50; // player xLoc
  float playerYChange; // players change in Y when jumping
  int playerheight = 50; // how tall is the player 
  boolean jump = false; // bool to test for going up or down
  int jumpSpeed = 10; // lower == faster, higher == slower
  int jumpHeight = 300; // how many pixels can player jump
  int health = 3; // amount of health the player has

  void controller(){
    UI();
    display();
    jump();
    ifHit();
  }

  void UI() {
    pushStyle();
    textSize(24);
    text(health, 100, 100); // health shown
    popStyle();
  }

  void display() {
    image(PlayerImg, playerX, height-(height/9)-playerheight-playerYChange, playerheight, playerheight);
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
    if (playerX >= e.x && playerX <= e.size) {
      health--;
      e.x = 500;
    }
  }
}