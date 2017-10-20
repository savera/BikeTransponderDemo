/* @pjs preload="dashboard.png"; */
ArrayList<Bicycle> bikes = new ArrayList<Bicycle>(); 
PImage dashboard;  

ArrayList<PImage> images;
int locator = 0;
int total = 0;
long prevTime = 0;

void setup(){
  dashboard = loadImage("dashboard.png");
  //size(dashboard.width, dashboard.height);
  size(793,716);
  background(dashboard);
  
  //setup timelapse
  images = new ArrayList<PImage>();
  for (int i = 0; i<300; i++) {
    if (new File("Documents/Processing/BackgroundImage/data/image"+i+".jpeg").exists()) {
      images.add(loadImage("image"+i+".jpeg"));
    }
  }
  total = images.size();
  prevTime = millis();
  //end timelapse setup
  
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

//draw road
  if (locator == total) {
    locator = 0;
  }//time between frames = 50 millis
  if(prevTime+50 < millis()){
    background(images.get(locator));
    locator++;
    prevTime = millis();
  }
//end draw road


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
