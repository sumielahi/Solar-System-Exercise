class Star {
  float a;
  float b;
  float opacity; 
  
  Star(){
    a=random(900);
    b=random(480); 
    opacity = 0;     
  }
  void show() {
    fill(255,opacity);//created ellipses star
    noStroke();
    ellipse(a,b,1,1);
    opacity= opacity+1;
    if(opacity==255){
      opacity= 0; 
    }
  }
 
  
}
