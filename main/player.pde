class player { 
  
  float x = 50;
  int playerheight = 50;
  
  void display(){
    pushStyle();
    fill(200, 0, 0);
    rect(50, height-(height/10)-playerheight, 200, playerheight);
    popStyle();
  }
  void move(){
    if(x < width) {
      x++;
    }
  }
  
}