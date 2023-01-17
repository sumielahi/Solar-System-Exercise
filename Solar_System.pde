
//creating a star class
Star s1= new Star(); 
Star s2= new Star(); 
Star s3= new Star();
Star s4= new Star(); 
Star s5= new Star(); 
Star s6= new Star(); 

PShape planet; //shape 
PImage img; //jupiter
PImage img1;//saturn
PImage img2; //uranus
PImage img3; //neptune
PImage img4; //mercury
PImage img5; //venus
PImage img6; //mars
PImage sun;
PImage earth;

float x = 270;
float y = 170;
float radius = 30;

PFont font1;
PFont font2;
PFont font3;

int counter=0;

void setup() {
  //set the size of the window 
  size(910, 500);
  planet = loadShape("planet-earth.svg");
  img=loadImage("newjupiter.png");
  img1=loadImage("saturn1.png");
  img2=loadImage("neptune1.png");
  img3=loadImage("n1.png");
  img4=loadImage("mer1.png");
  img5=loadImage ("ven1.png");
  img6=loadImage ("mar1.png"); 
  sun=loadImage("sun1.png"); 
  earth=loadImage("e1.png");
  
  font1=loadFont("ChakraPetch-Medium-48.vlw");
  font2=loadFont("ChakraPetch-ExtraLight-48.vlw");
  font3=loadFont("Verdana-48.vlw");
  for( int i = 0; i < width; i++){
  stroke(map(i,0,width,30,30),0,230-map(i,0,width,120,255));
  line(i,0,i,height);} 

}

void draw() { 
  frameRate(10);
  //create gradient background 
  background(0);
  for( int i = 0; i < width; i++){
  stroke(map(i,0,width,30,30),0,230-map(i,0,width,120,255));
  line(i,0,i,height);}  
  
  //blinking stars class names
  s1.show();
  s2.show();
  s3.show();
  s4.show();
  s5.show();
  fill(255);// twinkly stars show  
 for (int count = 0; count < 20; count++) {
   float size = random(1,3);
   ellipse(random(width), random(height), size, size);
   }
  
  //println(mouseX + ","+mouseY);

     
  //draw the Sun, 8 planets, and title our solar system
  stroke(255);
  for(int i=720; i<910; i+=10){
  point(i,130);
  }
  textFont(font1,14);
  String s = "OUR SOLAR SYSTEM";
  fill(#daa520);
  text(s, 720, 110, 900, 130);
  
  //creating glow effect 
  ellipseMode(CENTER); 
  for (int k = 20; k < 140; k++) {
  noStroke();
  fill(255,255,255,2);
  ellipse(100,100,k,k);
  }
  
  //this code not necessary but backup sun for detecting coordinates
  noStroke();{
  fill(#FFC000);
  ellipse(100,100,100,100);
  fill(#FFA500);
  ellipse(100,100,80,80);
  fill(#FF5F1F);
  ellipse(100,100,50,50);
  fill(#F5350C);
  ellipse(100,100,20,20);//sun end
  image(sun,30,30,140,140);
  }
  
  //creating hover effects for all planets
  if (dist(mouseX,mouseY,180,150)<10){ //mercury hover
     fill(255,255,255);
     smooth();
     fill(#ffca00);
     textFont(font1,12);
     text("MERCURY",180,55);
     fill(255);
     textFont(font3,10);
     text("Gravity Strength: 3.75 m/s^2",190,75);
     text("Orbit Circum: 35M miles",190,90);
     text("Orbital Period: 88 days",190,105);
     text("Distance from Earth: 28M miles",190,120);
     stroke(255);
     for(int i=65; i<160; i+=8){
  point(180,i);
  }
  noStroke();
  fill(255,255,255,40);
  ellipse(180,150,30,30);
     }
  
   
  if (dist(mouseX,mouseY,270,170)<12){ //venus hover effect
     fill(#ffca00);
     textFont(font1,13);
     text("VENUS",270,270);
     fill(255);
     textFont(font3,10);
     text("Gravity Strength: 8.36 m/s^2",270,290);
     text("Orbit Circum: 67M miles",270,305);
     text("Orbital Period: 225 days",270,320);
     text("Distance from Earth: 62M miles",270,335);
     noStroke(); //glow
     fill(255,255,255,40);
     ellipse(270,170,40,40);
     stroke(255);
     for(int i=170; i<260; i+=8){
  point(270,i);
     }
     
  }
    
  if (dist(mouseX,mouseY,360,190)<15){ //earth hover
     //fill(#f5ff00); //different yellow shade experiment
     fill(#ffca00);
     textFont(font1,13);
     text("EARTH",360,65);
     fill(255); 
     textFont(font3,10);
     smooth(4);
     text("Gravity Strength: 9.8 m/s^2",370,85);
     text("Orbit Circum: 92M miles",370,100);
     text("Orbital Period: 365 days",370,115);
     text("Distance from Earth: 0 miles",370,130);
     noStroke(); //glow
     fill(255,255,255,40);
     ellipse(360,185,53,53);
     stroke(255);
     for(int i=70; i<200; i+=8){
     point(360,i);
     }
     
  }
    
  
  if (dist(mouseX,mouseY,450,230)<10){ //mars hover effect
     fill(#ffca00);
     textFont(font1,13);
     text("MARS",450,320); 
     fill(255);
     textFont(font3,10);
     text("Gravity Strength: 3.72 m/s^2",450,337);
     text("Orbit Circum: 141M miles",450,352);
     text("Orbital Period: 687 days",450,367);
     text("Distance from Earth: 33.9M miles",450,382);
     noStroke(); //glow
  fill(255,255,255,35);
  ellipse(450,230,34,34);
     stroke(255);
     for(int i=240; i<320; i+=8){
  point(450,i);
     }
  }
    
  
  if (dist(mouseX,mouseY,540,235)<30){ //jupiter hover effect
     fill(#ffca00);
     textFont(font1,13);
     text("JUPITER",540,85); 
     fill(255);
     textFont(font3,10);
     text("Gravity Strength: 24.79 m/s^2",550,100);
     text("Orbit Circum: 483M miles",550,115);
     text("Orbital Period: 4,380 days",550,130);
     text("Distance from Earth: 365M miles",550,145);
     noStroke(); //glow
     fill(255,255,255,35);
     ellipse(537,233,69,69);
     stroke(255);
     for(int i=80; i<260; i+=8){
     point(540,i);
     }
  }
     
  
  
  if (dist(mouseX,mouseY,630,225)<25){ //saturn hover
     fill(#ffca00);
     textFont(font1,13);
     text("SATURN",630,335); 
     fill(255);
     textFont(font3,10);
     text("Gravity Strength: 10.44 m/s^2",630,350);
     text("Orbit Circum: 886M miles",630,365);
     text("Orbital Period: 10,585 days",630,380);
     text("Distance from Earth: 746M miles",630,395);
     noStroke(); //glow
     fill(255,255,255,50);
     ellipse(630,225,60,60);
     stroke(255);
     for(int i=240; i<320; i+=8){
     point(630,i);
     }
  }
    
  
  if (dist(mouseX,mouseY,720,270)<17){ //uranus hover
     fill(#ffca00);
     textFont(font1,13);
     text("URANUS",720,175); 
     fill(255);
     textFont(font3,10);
     text("Gravity Strength: 8.87 m/s^2",730,190);
     text("Orbit Circum: 1783M miles",730,205);
     text("Orbital Period: 30,0660 days",730,220);
     text("Distance from Earth: 1600M miles",730,235);
     noStroke(); //glow
  fill(255,255,255,35);
  ellipse(719,270,50,50);
     stroke(255);
     for(int i=170; i<260; i+=8){
  point(720,i);
     }
  }
    
    
    if (dist(mouseX,mouseY,810,300)<17){ //neptune hover
     fill(#ffca00);
     textFont(font1,13);
     text("NEPTUNE",710,350);
     fill(255); 
     textFont(font3,10);
     text("Gravity Strength: 11.15 m/s^2",710,365);
     text("Orbit Circum: 2795M miles",710,380);
     text("Orbital Period: 60,225 days",710,395);
     text("Distance from Earth: 2700M miles",710,410);
     noStroke(); //glow
     fill(255,255,255,35);
     ellipse(810,300,45,45);
     stroke(255);
     for(int i=320; i<360; i+=8){
     point(810,i);
     }
     
    }
     
    //creating additional ellipses to size my images correctly for glow effect
  
  noStroke();
  fill(#E57373);
  ellipse(180,150,20,20);//mercury
  image(img4,170,140,20,20); 
  
  fill(#F9A825);
  ellipse(270,170,25,25);//venus
  image(img5,256,156,27,27);
  
  
  fill(#8BC34A);
  ellipse(360,190,30,30);//earth
  shape(planet,340,165,40,40);    
    
  fill(#B71C1C);
  ellipse(450,230,22,22);//mars
  image(img6,433,212,35,35);
  
  noFill();
  ellipse(540,235,60,60);//jupiter
  image(img,500,196,75,75);
  fill(#000000);
  ellipse(630,225,50,50);//saturn
  
  image(img1,548,193,163,64);
  fill(#00BCD4);
  ellipse(720,270,35,35);//uranus
  image(img2,700,251,38,38);
      
  fill(#000000);
  ellipse(810,300,35,35);//neptune
  image(img3,785,281,51,36);
}
