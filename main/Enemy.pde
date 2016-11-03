// class for enemy :P
class enemy {
  float Height;
  float Colour;
  float Width;
  float heightMultiplier = 3;
  float x = 500;


  enemy() {
  }
  void move() {
    if(x > p1.playerX){
      x--;    
    }
  }
  void randomHeight() {
    Height = random(0, 10);
  }
  void randomWidth(){
    Width = random(0, 10);
  }
  void display(){
    pushStyle();
    fill(0, 200, 0);
    rect(x, height-(height/10)-50, 50, 50);
    popStyle();
  }
}