int margin = 100;
int size = 300;
float width2;
float height2;
ArrayList<Arrow> arrows = new ArrayList<>(); 
int green = 0;
int red = 0;
int amount = 600;
float c;

void setup(){
  size(600,600);
  width2 = width / 2;
  height2 = height / 2;
}


void draw(){
  background(125);
  for(int i = 0; i < amount; i++){
    arrows.add(new Arrow());
  }
  stroke(255);
  strokeWeight(2);
  fill(0);
  square(margin, margin, width - 2 * margin);
  circle(width/2, height/2, width - 2 * margin);
  
  for(int i = 0; i < arrows.size(); i ++){
    arrows.get(i).display();
    if(arrows.get(i).health < 0) arrows.remove(i);
  }
  
   
  textSize(32);
  text("Estimation = " + (4* (float) green / (float) (green + red)), 0,40);
  text("n = " + (green + red), 10, 80);
}
