PImage Aura;  // princess picture
int cz=700; //clock size
Snow[] snows = new Snow[10];   // my array
Clock c;

void setup(){
size(900,900);  //screen size

Aura =loadImage("data/beauty.png");  //princess picture loading

for (int i=0; i < snows.length; i++){    //snow looping
 snows[i] = new Snow(); 
}
}

void draw(){
  background(100);
  

fill(0,0, 200, 100);
noStroke();
ellipse(width/2, height/2,cz,cz);   //clock in the background

c.Clock();
c.clockwise();

imageMode(CENTER);                       //picture in the middle, the information such as size and height and where in the poster its placeed.
image(Aura,width/2,height/2,700, height);

c.Clock();
c.clockwise();


for (int i = 0; i < snows.length; i++) {
    snows[i].falling();
    snows[i].snow();


}}
