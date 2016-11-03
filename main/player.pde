class player { 
  int playerX = 50;
  
  
  float playerYChange = 0;
  int playerheight = 50;
  
  boolean jump = false;
  int jumpSpeed = 30; // lower == faster, higher == slower
  int jumpHeight = 300;
  void display() {
    pushStyle();
    fill(200, 0, 0);
    rect(playerX, height-(height/10)-playerheight-playerYChange, playerheight, playerheight);
    popStyle();
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
      playerYChange += (jumpHeight/jumpSpeed);
      if (playerYChange >= jumpHeight) {
        jump = false;
      }
    } else if (jump == false && playerYChange > 0) {
      playerYChange -= jumpHeight/jumpSpeed;
    }
  }
}