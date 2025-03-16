class Arrow{
  float x = 0;
  float y = 0;
  float health = 255;
  float distance;
  boolean inside;
  
  
  Arrow(){  
    this.x = random(margin, width - margin);
    this.y = random(margin, height - margin);
    distance = (this.x - width2) * (this.x - width2) 
                      + (this.y - height2) * (this.y - height2);
                      
    inside = distance < ((float) width - 2 * margin) * ((float) width - 2 * margin) / 4;
    
    if(inside){
    green++;
    }else{red++;}
                
  }
  
  void display(){
                
    if(inside){
      stroke(0,255,0, health);
    }else{
      stroke(255, 0, 0, health);
    }
    strokeWeight(4);
    point(this.x, this.y);
    
    health -= 10;
    
  }
  
  
}
