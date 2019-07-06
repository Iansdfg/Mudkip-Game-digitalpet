PShape s;
PShape background;
PShape tips;
int x = 0;
int y = 0;

void setup() {
  noStroke();
  size(800, 800);
  background = loadShape("back.svg");
  s = loadShape("FRONT.svg");
}

void draw() {
  background(#dddddd);
  shape(background,0,0,800,800);
  imageMode(CENTER);
  int shapeX = width/2-200;
  int shapeY = height/2-300; 
  shape(s, shapeX+x,shapeY+y,400,550 ); 
  //invasible ball#1
  int ball1X = width/2+x;
  int ball1Y = height/2+25+y;
  noFill();
  ellipse(ball1X,ball1Y,230,230);
  tint(255, 126); 
  //invasible ball#2
  int ball2X = width/2+x;
  int ball2Y = height/2+195+y;
  noFill();
  ellipse(ball2X,ball2Y,100,100); 
  //mouseover
  if (dist(mouseX, mouseY, ball1X, ball1Y)<115
  || dist(mouseX, mouseY, ball2X, ball2Y)<50){
    s = loadShape("SMILE.svg");
  }else{
    s = loadShape("FRONT.svg");
  }
  //conditions
  if(keyCode == LEFT){
    x-=1;
    s = loadShape("LEFT.svg");
  }
  if(keyCode == RIGHT){
    x+=1;
    s = loadShape("RIGHT.svg");
  }
  //cross the screen
  if(x<shapeX-width/2-200){
     x=width/2;}
  if(x>shapeX+width/2-200){
     x=-width/2;}
  //tip ball
  fill(#e1b8b3);
  ellipse(25,25,40,40);
  if (dist(mouseX, mouseY, 20, 20)<15){
    tips = loadShape("tip.svg");
    shape(tips,30,0,200,300);
  }
  
  }



