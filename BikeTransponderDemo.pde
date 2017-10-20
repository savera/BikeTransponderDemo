/* @pjs preload="dashboard.png","bike.png","image1.jpeg","image2.jpeg","image4.jpeg","image5.jpeg","image6.jpeg","image7.jpeg","image8.jpeg","image9.jpeg","image10.jpeg","image11.jpeg","image12.jpeg","image13.jpeg","image14.jpeg","image15.jpeg","image16.jpeg","image17.jpeg","image18.jpeg","image19.jpeg","image21.jpeg","image23.jpeg","image24.jpeg","image25.jpeg","image26.jpeg","image27.jpeg","image28.jpeg","image29.jpeg","image31.jpeg","image32.jpeg","image34.jpeg","image37.jpeg","image41.jpeg","image46.jpeg","image49.jpeg","image50.jpeg","image51.jpeg","image52.jpeg","image53.jpeg","image54.jpeg","image55.jpeg","image56.jpeg","image57.jpeg","image58.jpeg","image59.jpeg","image60.jpeg","image61.jpeg","image62.jpeg","image63.jpeg","image64.jpeg","image65.jpeg","image68.jpeg","image72.jpeg","image77.jpeg","image84.jpeg","image87.jpeg","image89.jpeg","image90.jpeg","image93.jpeg","image97.jpeg","image98.jpeg","image99.jpeg","image100.jpeg","image101.jpeg","image102.jpeg","image103.jpeg","image104.jpeg","image105.jpeg","image106.jpeg","image107.jpeg","image108.jpeg","image109.jpeg","image110.jpeg","image111.jpeg","image112.jpeg","image113.jpeg","image120.jpeg","image123.jpeg","image129.jpeg","image130.jpeg","image138.jpeg","image144.jpeg","image145.jpeg","image153.jpeg","image161.jpeg","image162.jpeg","image166.jpeg","image170.jpeg","image173.jpeg","image176.jpeg","image177.jpeg","image181.jpeg","image187.jpeg","image193.jpeg","image194.jpeg","image195.jpeg","image196.jpeg","image198.jpeg","image200.jpeg","image201.jpeg","image202.jpeg","image203.jpeg","image204.jpeg","image205.jpeg","image206.jpeg","image207.jpeg","image208.jpeg","image210.jpeg","image211.jpeg","image212.jpeg","image213.jpeg","image214.jpeg","image215.jpeg","image216.jpeg","image217.jpeg","image218.jpeg","image219.jpeg","image220.jpeg","image221.jpeg","image222.jpeg","image223.jpeg"; */
ArrayList<Bicycle> bikes = new ArrayList<Bicycle>();
String[] imageNames = {"image1.jpeg","image2.jpeg","image4.jpeg","image5.jpeg","image6.jpeg","image7.jpeg","image8.jpeg","image9.jpeg","image10.jpeg","image11.jpeg","image12.jpeg","image13.jpeg","image14.jpeg","image15.jpeg","image16.jpeg","image17.jpeg","image18.jpeg","image19.jpeg","image21.jpeg","image23.jpeg","image24.jpeg","image25.jpeg","image26.jpeg","image27.jpeg","image28.jpeg","image29.jpeg","image31.jpeg","image32.jpeg","image34.jpeg","image37.jpeg","image41.jpeg","image46.jpeg","image49.jpeg","image50.jpeg","image51.jpeg","image52.jpeg","image53.jpeg","image54.jpeg","image55.jpeg","image56.jpeg","image57.jpeg","image58.jpeg","image59.jpeg","image60.jpeg","image61.jpeg","image62.jpeg","image63.jpeg","image64.jpeg","image65.jpeg","image68.jpeg","image72.jpeg","image77.jpeg","image84.jpeg","image87.jpeg","image89.jpeg","image90.jpeg","image93.jpeg","image97.jpeg","image98.jpeg","image99.jpeg","image100.jpeg","image101.jpeg","image102.jpeg","image103.jpeg","image104.jpeg","image105.jpeg","image106.jpeg","image107.jpeg","image108.jpeg","image109.jpeg","image110.jpeg","image111.jpeg","image112.jpeg","image113.jpeg","image120.jpeg","image123.jpeg","image129.jpeg","image130.jpeg","image138.jpeg","image144.jpeg","image145.jpeg","image153.jpeg","image161.jpeg","image162.jpeg","image166.jpeg","image170.jpeg","image173.jpeg","image176.jpeg","image177.jpeg","image181.jpeg","image187.jpeg","image193.jpeg","image194.jpeg","image195.jpeg","image196.jpeg","image198.jpeg","image200.jpeg","image201.jpeg","image202.jpeg","image203.jpeg","image204.jpeg","image205.jpeg","image206.jpeg","image207.jpeg","image208.jpeg","image210.jpeg","image211.jpeg","image212.jpeg","image213.jpeg","image214.jpeg","image215.jpeg","image216.jpeg","image217.jpeg","image218.jpeg","image219.jpeg","image220.jpeg","image221.jpeg","image222.jpeg","image223.jpeg"};
PImage dashboard;  
Bicycle bike1 = new Bicycle(900,10,10,0.25);

ArrayList<PImage> images;
int locator = 0;
int total = 0;
long prevTime = 0;

void setup(){
  
  dashboard = loadImage("dashboard.png");
  size(793,716);
  
  //setup timelapse
  images = new ArrayList<PImage>();
  for (String imageName : imageNames) {
    try {
      thisImage = loadImage(imageName);
      thisImage.resize(1200,600);
      images.add(thisImage);
      
    } catch (Exception e) {}
  }
  total = images.size();
  prevTime = millis();
  //end timelapse setup
}

void draw(){
  

//draw road
  if (locator == total) {
    locator = 0;
  }//time between frames = 50 millis
  if(prevTime+100 < millis()){
    print (locator);
    image(images.get(locator), -200, 0);
    image(dashboard, 0, 0);
    locator++;
    prevTime = millis();
  }
//end draw road

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
