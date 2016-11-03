class player { 

  float playerYChange = 0;
  int playerheight = 100;
  boolean jump = false;
  int jumpSpeed = 5; // higher == faster, lower == slower
  int jumpHeight = 300;

  void display() {
    /*
    pushStyle();
    fill(200, 0, 0);
    rect(50, height-(height/9)-playerheight-playerYChange, playerheight, playerheight);
    popStyle();
    */
    image(PlayerImg, 50, height-(height/9)-playerheight-playerYChange, playerheight, playerheight);
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
}