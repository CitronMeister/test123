// Vars
int gameStarted = 0;




// func
void ground(float r, float g, float b) {
  pushStyle();
  fill(r, g, b);
  rect(0, height-height/9, width, height/9);
  popStyle();
}
void sky(float r, float g, float b) {
  pushStyle();
  fill(r, g, b);
  rect(0, 0, width, height);
  popStyle();
}
/*
Clouds if ever needed.
 void clouds(float c){
 pushStyle();
 fill(c);
 rect(0,0, width, height/10);
 }*/