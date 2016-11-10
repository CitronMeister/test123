class world {

  
  void controller(){
    if(gameStarted == 0){
      menu();
    }
    else if(gameStarted == 1){
      world1();
      world2();
    }
    else if(gameStarted == 2){
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
  void menu(){
    textAlign(CENTER);
    textSize(24);
    text("I hope you lose XD", width/2, height/2);
  
  }
  void gameover(){
    
  }
}