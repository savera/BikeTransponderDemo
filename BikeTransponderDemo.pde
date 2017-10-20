ArrayList<Bicycle> bikes = new ArrayList<Bicycle>(); 
PImage dashboard;  

void setup(){
  dashboard = loadImage("dashboard.png");
  //size(dashboard.width, dashboard.height);
  size(793,716);
  background(dashboard); 
  bikes.add(new Bicycle(400,10,10,2));
  bikes.add(new Bicycle(400,10,10,3));
  bikes.add(new Bicycle(400,10,10,1));
  bikes.add(new Bicycle(400,10,10,2));
  bikes.add(new Bicycle(400,10,10,2));
  bikes.add(new Bicycle(400,10,10,1));
  bikes.add(new Bicycle(400,10,10,1));
  bikes.add(new Bicycle(400,10,10,3));
for(Bicycle b: bikes){
 b.display();  
}

}

void draw(){
  for(Bicycle b: bikes){
    float r = random(1.0,1.2); 
   if(r == 1){
      System.out.print("right"); 
     //b.moveLeft(); 
     //background(dashboard); 
   }else{
      System.out.print("left"); 
     //b.moveLeft();
     //background(dashboard); 
  }
  }
  
}

class Bicycle{
  int x; 
  int y; 
  int z; 
  int speed; 
  Bicycle(int x, int y, int z, int speed){ 
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
  
  int getX(){
    return x; 
  }
  
  int getY(){
    return y;
  }
  
  int getZ(){
    return z;
  }
}