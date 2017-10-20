/* @pjs preload="dashboard.png","image1.jpeg","image2.jpeg","image4.jpeg","image5.jpeg","image6.jpeg","image7.jpeg","image8.jpeg","image9.jpeg","image10.jpeg","image11.jpeg","image12.jpeg","image13.jpeg","image14.jpeg","image15.jpeg","image16.jpeg","image17.jpeg","image18.jpeg","image19.jpeg","image21.jpeg","image23.jpeg","image24.jpeg","image25.jpeg","image26.jpeg","image27.jpeg","image28.jpeg","image29.jpeg","image31.jpeg","image32.jpeg","image34.jpeg","image37.jpeg","image41.jpeg","image46.jpeg","image49.jpeg","image50.jpeg","image51.jpeg","image52.jpeg","image53.jpeg","image54.jpeg","image55.jpeg","image56.jpeg","image57.jpeg","image58.jpeg","image59.jpeg","image60.jpeg","image61.jpeg","image62.jpeg","image63.jpeg","image64.jpeg","image65.jpeg","image68.jpeg","image72.jpeg","image77.jpeg","image84.jpeg","image87.jpeg","image89.jpeg","image90.jpeg","image93.jpeg","image97.jpeg","image98.jpeg","image99.jpeg","image100.jpeg","image101.jpeg","image102.jpeg","image103.jpeg","image104.jpeg","image105.jpeg","image106.jpeg","image107.jpeg","image108.jpeg","image109.jpeg","image110.jpeg","image111.jpeg","image112.jpeg","image113.jpeg","image120.jpeg","image123.jpeg","image129.jpeg","image130.jpeg","image138.jpeg","image144.jpeg","image145.jpeg","image153.jpeg","image161.jpeg","image162.jpeg","image166.jpeg","image170.jpeg","image173.jpeg","image176.jpeg","image177.jpeg","image181.jpeg","image187.jpeg","image193.jpeg","image194.jpeg","image195.jpeg","image196.jpeg","image198.jpeg","image200.jpeg","image201.jpeg","image202.jpeg","image203.jpeg","image204.jpeg","image205.jpeg","image206.jpeg","image207.jpeg","image208.jpeg","image210.jpeg","image211.jpeg","image212.jpeg","image213.jpeg","image214.jpeg","image215.jpeg","image216.jpeg","image217.jpeg","image218.jpeg","image219.jpeg","image220.jpeg","image221.jpeg","image222.jpeg","image223.jpeg"; */
ArrayList<Bicycle> bikes = new ArrayList<Bicycle>();
String[] imageNames = {"image1.jpeg","image2.jpeg","image4.jpeg","image5.jpeg","image6.jpeg","image7.jpeg","image8.jpeg","image9.jpeg","image10.jpeg","image11.jpeg","image12.jpeg","image13.jpeg","image14.jpeg","image15.jpeg","image16.jpeg","image17.jpeg","image18.jpeg","image19.jpeg","image21.jpeg","image23.jpeg","image24.jpeg","image25.jpeg","image26.jpeg","image27.jpeg","image28.jpeg","image29.jpeg","image31.jpeg","image32.jpeg","image34.jpeg","image37.jpeg","image41.jpeg","image46.jpeg","image49.jpeg","image50.jpeg","image51.jpeg","image52.jpeg","image53.jpeg","image54.jpeg","image55.jpeg","image56.jpeg","image57.jpeg","image58.jpeg","image59.jpeg","image60.jpeg","image61.jpeg","image62.jpeg","image63.jpeg","image64.jpeg","image65.jpeg","image68.jpeg","image72.jpeg","image77.jpeg","image84.jpeg","image87.jpeg","image89.jpeg","image90.jpeg","image93.jpeg","image97.jpeg","image98.jpeg","image99.jpeg","image100.jpeg","image101.jpeg","image102.jpeg","image103.jpeg","image104.jpeg","image105.jpeg","image106.jpeg","image107.jpeg","image108.jpeg","image109.jpeg","image110.jpeg","image111.jpeg","image112.jpeg","image113.jpeg","image120.jpeg","image123.jpeg","image129.jpeg","image130.jpeg","image138.jpeg","image144.jpeg","image145.jpeg","image153.jpeg","image161.jpeg","image162.jpeg","image166.jpeg","image170.jpeg","image173.jpeg","image176.jpeg","image177.jpeg","image181.jpeg","image187.jpeg","image193.jpeg","image194.jpeg","image195.jpeg","image196.jpeg","image198.jpeg","image200.jpeg","image201.jpeg","image202.jpeg","image203.jpeg","image204.jpeg","image205.jpeg","image206.jpeg","image207.jpeg","image208.jpeg","image210.jpeg","image211.jpeg","image212.jpeg","image213.jpeg","image214.jpeg","image215.jpeg","image216.jpeg","image217.jpeg","image218.jpeg","image219.jpeg","image220.jpeg","image221.jpeg","image222.jpeg","image223.jpeg"};
PImage dashboard;  

ArrayList<PImage> images;
int locator = 0;
int total = 0;
long prevTime = 0;

void setup(){
  print ("Startup");
  
  dashboard = loadImage("dashboard.png");
  //size(dashboard.width, dashboard.height);
  size(793,716);
  //background(dashboard);
  
  //setup timelapse
  images = new ArrayList<PImage>();
  for (String imageName : imageNames) {
    try {
      images.add(loadImage(imageName));
    } catch (Exception e) {}
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

print(total);

//draw road
  if (locator == total) {
    locator = 0;
  }//time between frames = 50 millis
  if(prevTime+50 < millis()){
    print (locator);
    image(0,0,images.get(locator));
    locator++;
    prevTime = millis();
  }
//end draw road


  for(Bicycle b: bikes){
    float r = random(1.0,1.2); 
   if(r == 1){
      print("right"); 
     //b.moveLeft(); 
     //background(dashboard); 
   }else{
      print("left"); 
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
