int frame = 0;
gFish[] gF = new gFish[12];
Foof[] food = new Foof[0];
Ripple[] ripples = new Ripple[0];
float bgR = 20;
float bgG = 90;
float bgB = 70;
Pad[] pd = new Pad[3];
boolean debug = true;
color debugClr = color(0,127,255);

void setup() {
  size(500,500);
  for (int i = 0; i < gF.length; i++){
    gF[i] = new gFish(random(1)+1,1,0.05,((float)i+1)/(float)gF.length);
  }
  for (int i = 0; i < pd.length; i++){
    pd[i] = new Pad();
  }
}

void draw() {
  frame++;
  if (frame > 500 && frame < 1000){
    //saveFrame("./frames/fish-###.png");
  }
  background(bgR,bgG,bgB);
  food = cleanFoof(food);
  for (int j = 0; j < food.length; j++){
    food[j].move();
    food[j].display();
  }
  for (int i = 0; i < gF.length; i++){
    gF[i].move();
    gF[i].display();
  }
  for (Ripple rp : ripples){
    rp.move();
    rp.display();
  }
  ripples = cleanRipple(ripples);
  for (Pad pp : pd){
    pp.move();
    pp.shadow();
  }
  for (Pad pp : pd){
    pp.display();
  }
}