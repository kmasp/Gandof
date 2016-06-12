//import packages
import java.util.Queue;
import java.util.LinkedList;
//images
PImage back;
PImage castlePic;
PImage B0;
PImage B1;
PImage B2;
PImage B3;
PImage B4;
PImage B5;
PImage B6;
PImage B7;

//booleans
boolean playing = false;
Player P1;

void setup() {
  size(960,460);
  back = loadImage("grasssky.jpg");
  castlePic = loadImage("castle.png");
  castlePic.resize(85, 85);
  B0 = loadImage("S0.jpg");
  B1 = loadImage("S1.jpg");
  B2 = loadImage("S2.jpg");
  B3 = loadImage("S3.jpg");
  B4 = loadImage("S4.jpg");
  B5 = loadImage("S5.jpg");
  B6 = loadImage("S6.jpg");
  B7 = loadImage("S7.jpg");
  smooth();
  noLoop();
  P1 = new Player();
}

void draw() {
  setup();
  image(back,0,-200,960,540);
  image(castlePic,20,150,100,100);
  image(castlePic,835,150,100,100);
  image(B0,0,340,120,120);
  image(B1,120,340,120,120);
  image(B2,240,340,120,120);
  image(B3,360,340,120,120);
  image(B4,480,340,120,120);
  image(B5,600,340,120,120);
  image(B6,720,340,120,120);
  image(B7,840,340,120,120);
  //Note: This will be added to the game screen at one point
  System.out.println("Welcome Player.");
  System.out.println("This is a castle defense game. You will be given MANA to use at the beginning of every round, and you must purchase units in order to defend your castle.");
  System.out.println("If you do not defend your castle, then you will lose a life and die.");
  System.out.println("Let's begin.");
  
  System.out.println("Level 1");
  Player P1 = new Player();
  Levels L1 = new Levels( P1, 1 );
  playing = true;
  P1 = L1.draw();
  P1.draw();
  System.out.println("Level 2");
  
}

void keyPressed() {
  if( playing && (key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' )) {
    Students x = new Students( key );
    P1.units.add( x );
    System.out.println("new unit");
  }
}