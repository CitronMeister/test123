class player { 

  float playerYChange = 0;
  int playerheight = 50;
  boolean jump = false;
  int jumpSpeed = 5;
  int jumpHeight = 300;
  void display() {
    pushStyle();
    fill(200, 0, 0);
    rect(50, height-(height/10)-playerheight-playerYChange, playerheight, playerheight);
    popStyle();
  }
  void jump() {
    if (keyPressed) {
      if (key == ' ') {
        jump = true;
      }
    }
    if (jump == true) {
      playerYChange += jumpSpeed;
      if (playerYChange == jumpHeight) {
        jump = false;
      }
    } else if (jump == false && playerYChange > 0) {
      playerYChange -= jumpSpeed;
    }
  }
}