class Pad{
  float radius = random(30)+20;
  float circum = radius * 2;
  float x = random(width);
  float y = random(height);
  float angle = random(1*PI);
  float xDir = random(-0.1,0.1);
  float yDir = random(-0.1,0.1);
  Pad(){
  }
  void move(){
    x += xDir;
    y += yDir;
    contain();
    angle += 0.001;
    if (random(1000)<1){
      
      ripples = addRip(ripples,x,y);
      ripples[ripples.length-1].circ = circum;
    }
  }
  void display(){
    noStroke();
    //fill(255);
    //arc(x,y+0.5,circum+1,circum,angle, angle +  PI * 1.9,PIE);
    fill(80,120,40);
    arc(x,y,circum,circum,angle, angle +  PI * 1.9,PIE);
    fill(100,150,80);
    arc(x,y,circum*.9,circum*.9,angle+.1, (angle +  PI * 1.9)-.1,PIE);
    fill(0,20);
    arc(x,y,circum,circum,(angle+PI)-0.1, angle +  PI + 0.1 ,PIE);
    
    
  }
  void shadow(){
    noStroke();
    fill(bgR,bgG,bgB,150);
    arc(x+3,y+10,circum,circum,angle, angle +  PI * 1.9,PIE);
  }
  
  void contain(){
    /*for (Pad lil : pd){
      if (lil != this){
        if (abs(x - lil.x) < radius + lil.radius){
          float moveDir = (x-lil.x)/abs(x-lil.x);
          float moveAmt = ((radius+lil.radius)-abs(x-lil.x))*moveDir;
          x += moveAmt;
          xDir *= -1;  
        }
        if (abs(y - lil.y) < radius + lil.radius){
          yDir *= -1;  
        }
      }
    }*/
    if (x < radius) {
      x = radius;
      xDir *= -1;
    }
    if (x > width-radius) {
      x = width-radius;
      xDir *= -1;
    }
    if (y < radius) {
      y = radius;
      yDir *= -1;
    }
    if (y > height-radius) {
      y = height-radius;
      yDir *= -1;
    }
  }
}