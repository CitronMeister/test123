void ground(float c){
  pushStyle();
  fill(c);
  rect(0, height-height/10, width, height/10);
  popStyle();
}
void sky(float c){
  pushStyle();
  fill(c);
  rect(0, 0, width, height/4);
  popStyle();


}