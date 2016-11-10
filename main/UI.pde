class UI {    
  
  void display() {
    
    if (p1.health == 3)
    {
     image(Hjerte3, height/9, width/9);
    }
    if (p1.health == 2)
    {
      image(Hjerte2, height/9, width/9);
    }
    if (p1.health == 1)
    {
      image(Hjerte1, height/9, width/9);
    }
  }


}