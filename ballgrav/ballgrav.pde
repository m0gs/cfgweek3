float x;
float ballSize = 40;
float y;
float yspeed = 5, xspeed = 5;
float fall = 3-9.8*(y+0.1);
boolean movingup=false;
boolean movingacross=false;

void setup() {
  size(800, 500);
}
 
void draw() {
  background(#11F21A);
  fill(#F211C2);
  ellipse(x, y, 50, 50);
  if(y>height) {
    movingup=true;
  }
  if (movingup){
    y = y-yspeed;
    yspeed = yspeed-0.05;
  }else{
    y = y+yspeed;
    yspeed = yspeed+0.05;
  }
  if (y==0){
    movingup=false;
  }
 
 if (x>width) {
   movingacross=true;
 }
 if(movingacross){
   x = x-xspeed;
 } else{
   x=x+xspeed;
 }
 if(x==0){
   movingacross=false;
 }

}
 

    


