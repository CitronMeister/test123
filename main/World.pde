class world {


  void controller() {
    if (gameStarted == 0) {
      menu();
    } else if (gameStarted == 1) {
      world1();
      world2();
    } else if (gameStarted == 2) {
      gameover();
    }
  }
  void world1() {
    pushStyle();
    sky(190, 250, 255);
    ground(90, 70, 50);
    popStyle();
  }
  void world2() {
    //sky();
  }
  void menu() {

    int HoverG = 150;
    int HoverR = 150;
    // debug XD
    text(width/2 - width/8, 100, 100);
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
      }
      if (mouseX > width/2 - width/8 && mouseX < width/2 - width/8 + width/4 && mouseY > height/2 + height/12 && mouseY < height/2 + height/12 + height/15) {
        exit();
      }
    }

    pushStyle();
    textAlign(CENTER);
    textSize(24);
    text("I hope you lose XD", width/2, height/2 - 50);
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
  }
}