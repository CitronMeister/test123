class UI {    

  void controller() {
    if (gameStarted >= 1) {
      displayH();
      points();
    }
  }

  void displayH() {

    if (p1.health == 3)
    {
      image(Hjerte3, height/24, width/24);
    }
    if (p1.health == 2)
    {
      image(Hjerte2, height/24, width/24);
    }
    if (p1.health == 1)
    {
      image(Hjerte1, height/24, width/24);
    }
  }
  void points() {
    pushStyle();
    textSize(40);
    textAlign(CENTER);
    text(points, width/2, height/12);
    popStyle();
  }
}