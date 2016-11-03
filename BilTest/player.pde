class bil { 
  
  float x = 50;
  
  void display(){
    pushStyle();
    fill(200, 0, 0);
    rect(x, 50, 200, 20);
    popStyle();
  }
  void move(){
    if(x < width) {
      x++;
    }
  }
  
}