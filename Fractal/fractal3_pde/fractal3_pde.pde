int angle = 0; 
 void setup(){
 //size(2000,1000);
 size(1000,1000);
 background(0);
 stroke(255);
 strokeWeight(1); 
  drawSnowFlake(width,height, width/2, height/2);
} 

void draw(){ 
   snowRing();
 
}

//make a ring of snow flakes
void snowRing(){
  translate( width/2, height/2);
  if( angle <= 24){
  
  rotate(angle);
  drawSnowFlake(width,height, width/2, height/2);
  angle = angle + 1;
  }
 
}
  
void drawSnowFlake(float wide, float high, float locationX, float locationY){
  //MOVE THE ORIGIN 
  translate( locationX, locationY);
  
  //DRAWTHE MAIN SNOWFLAKE  
  for( int i = 0; i <= 360; i = i+15){   
   rotate(radians(i));
    line(wide/4, 0, -wide/4,0);
    noFill();
    ellipse(wide/8,0, wide/15,wide/15);
    ellipse(-wide/8,0, wide/15,wide/15);
    //BRANCH PAIR 1
    line(-wide/8, 0, -3*wide/16,wide/16);
    line(-wide/8, 0, -3*wide/16,-wide/16);
    //BRANCH PAIR 2
    line(wide/8, 0, 3*wide/16,wide/16);
    line(wide/8, 0, 3*wide/16,-wide/16);
     
    }
 
    if( wide > 50){
      drawSnowFlake( wide/2,high/2, wide, 0);
      drawSnowFlake( wide/2,high/2, -wide, 0);
      drawSnowFlake( wide/2,high/2, -2 *wide, 0);
      drawSnowFlake( wide/2,high/2, 2 *wide, 0);
    }
  }
  