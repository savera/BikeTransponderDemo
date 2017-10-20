PImage dashboard;  
Bicycle bike1 = new Bicycle(900,10,10,0.25);

void setup(){
  
  dashboard = loadImage("dashboard.png");
  size(793,716);
  background(dashboard); 
  
}

void draw(){
  
   background(dashboard);
  bike1.display();
   bike1.moveRight(); 
     
for(int i = 0; i < 9; i++){
  if(bike1.getX() <= 0){
    bike1.setX(769); 
    bike1.setY(55);
    bike1.setSpeed(bike1.getSpeed()+0.5);
    bike1.moveRight(); 
  }
  if (i==8){
    for(int j = 0; j < 9; j++){
      if(bike1.getX() <= 825){
        print("hi");

      }
      if(bike1.getX() <= 0){
         bike1.setX(749); 
         bike1.setY(55);
         bike1.setSpeed(bike1.getSpeed()+0.5);
         bike1.moveRight(); 
      }
    }
  }
    
}
   
 if(key==CODED){
   
 }
  
  }
  
  int timer(int timerLength) {
  int remainingTime = timerLength-millis();
 
  if(remainingTime/1000>0){
    int actualTime = (remainingTime/1000);
    return actualTime;
   }
  else {
    //time = false;
    return 0;     
  }
}
  


class Bicycle{
  int x; 
  int y; 
  int z; 
  double speed; 
  
  Bicycle(int x, int y, int z, double speed){ 
    this.x = x;
    this.y = y; 
    this.z = z; 
    this.speed = speed; 
  }
  
  void display(){
   fill(255,0,0); 
   rect(x,y,10,10);
  }  
  
  void moveLeft(){
    x+=speed; 
  }
  
  void moveRight(){
    x-=speed;
  }
  
  void setX(int x){
   this.x = x;
  }
  
  int getX(){
    return x; 
  }
  
  void setY(int y){
   this.y = y;
  }
  
  int getY(){
    return y;
  }
  
  void setSpeed(double speed){
   this.speed = speed;
  }
  
  double getSpeed(){
    return speed;
  }
  
  int getZ(){
    return z;
  }
}