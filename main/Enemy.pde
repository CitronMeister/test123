// class for enemy :P
class enemy {
  float Height;
  float Colour;
  float Width;
  float x = 500; // xloc for the enemy
  float xSpeed = 3; // speed the enemy moves
  float size = 50; // size of enemy currently only one value!

  void move() {
    if(x > 0 - size){
      x -= xSpeed;    
    }
    if(x <= 0 - size){
      x = width + size;
    }
  }  
  void display(){
    pushStyle();
    fill(0, 200, 0);
    rect(x, height-(height/10)-p1.playerheight, size, size);
    popStyle();
  }
  
}