import java.util.LinkedList;
PImage back;
PImage castlePic;
boolean playing = false;
Player P1;

Castles castle = new Castles();

void setup() {
  size(640,360);
  back = loadImage("grasssky.jpg");
  castlePic = loadImage("castle.png");
  castlePic.resize(85, 85);
  smooth();
  noLoop();
  P1 = new Player();
}

void draw() {
  setup();
  //Note: This will be added to the game screen at one point
  System.out.println("Welcome Player.");
  System.out.println("This is a castle defense game. You will be given MANA to use at the beginning of every round, and you must purchase units in order to defend your castle.");
  System.out.println("If you do not defend your castle, then you will lose a life and die.");
  System.out.println("Let's begin.");
  image(back,0,0);
  image(castlePic,20,220);
  image(castlePic,535,220);
  
  System.out.println("Level 1");
  Player P1 = new Player();
  Levels L1 = new Levels( P1, 1 );
  L1.draw();
  
  System.out.println("Level 2");
  
}