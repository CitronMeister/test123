class world {


  void controller() {
    if (gameStarted == 0) {
      menu();
    } else if (gameStarted >= 1) {
      world1();
    } else if (gameStarted == -1) {
      gameover();
    }
  }
  void world1() {
    pushStyle();
    sky(190, 250, 255);
    ground(90, 70, 50);
    popStyle();
  }
  void menu() {
    background(71);
    int HoverG = 150;
    int HoverR = 150;

    // Hover!!!!!
    if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 && mouseY < height/2 + height/15) {
      HoverG = 210;
    }
    if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 + height/12 && mouseY < height/2 + height/12 + height/15) {
      HoverR = 210;
    }
    if (mousePressed) {
      if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 && mouseY < height/2 + height/15) {
        gameStarted = 1;
        points = 0;
      }
      if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 + height/12 && mouseY < height/2 + height/12 + height/15) {
        exit();
      }
    }

    pushStyle();
    textAlign(CENTER);
    textSize(24);
    text("Play as ''Gandalf The Gay'' to save the univers!", width/2, height/2 - 50);
    popStyle();

    // StartGame
    pushStyle();
    textAlign(CENTER);
    textSize(24);
    fill(50, HoverG, 50);
    noStroke();
    rect(width/2 - width/8, height/2, width/4, height/15);
    popStyle();
    pushStyle();
    textAlign(CENTER);
    textSize(24);
    text("START!", width/2, height/2 + height/24);
    popStyle();
    // Exit game
    pushStyle();
    noStroke();
    fill(HoverR, 50, 50);
    rect(width/2 - width/8, height/2 + height/12, width/4, height/15);
    popStyle();
    pushStyle();
    textAlign(CENTER);
    textSize(24);
    text("Exit", width/2, height/2 + height/24 + height/12);
    popStyle();
    // Created by :P
    pushStyle();
    text("Created by: Bjorn, Moller & Nick", width/80, height - height/40);
    popStyle();
  }
  void gameover() {
    background(0);
    int HoverG = 150;
    int HoverR = 150;

    // Hover!!!!!
    if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 + height/12 && mouseY < height/2 + height/15 + height/12) {
      HoverG = 210;
    }
    if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 + height/12 + height/12&& mouseY < height/2 + height/12 + height/15 + height/12) {
      HoverR = 210;
    }
    if (mousePressed) {
      if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 + height/12 && mouseY < height/2 + height/15 + height/12) {
        gameStarted = 1;
        p1.health = 3;
        points = 0;
      }
      if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 + height/12 + height/12&& mouseY < height/2 + height/12 + height/15 + height/12) {
        gameStarted = 0;
        p1.health = 3;
      }
    }

    pushStyle();
    textAlign(CENTER);
    textSize(24);
    text("You Were Kill!", width/2, height/2 - 50 + height/12);
    popStyle();

    // StartGame
    pushStyle();
    textAlign(CENTER);
    textSize(24);
    fill(50, HoverG, 50);
    noStroke();
    rect(width/2 - width/8, height/2 + height/12, width/4, height/15);
    popStyle();
    pushStyle();
    textAlign(CENTER);
    textSize(20);
    text("But what if Gandalf was not kill?", width/2, height/2 + height/24 + height/12);
    popStyle();

    // Back to menu
    pushStyle();
    noStroke();
    fill(HoverR, 50, 50);
    rect(width/2 - width/8, height/2 + height/12 + height/12, width/4, height/15);
    popStyle();
    pushStyle();
    textAlign(CENTER);
    textSize(24);
    text("Back to Menu", width/2, height/2 + height/24 + height/12 + height/12);
    popStyle();
  }
}