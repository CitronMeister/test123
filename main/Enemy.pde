// class for enemy :P
class enemy {
  float Height;
  float Colour;
  float Width;
  float heightMultiplier = 3;

  enemy() {
  }
  void move() {
  }
  void randomHeight() {
    Height = random(0, 10);
  }
  void randomWidth(){
    Width = random(0, 10);
  }
  void display(){
    rect();
  }