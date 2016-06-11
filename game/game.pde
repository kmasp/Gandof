import java.util.Queue;
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
  playing = true;
  L1.draw();
  System.out.println("Level 2");
  
}

void keyPressed() {
  if( playing && (key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' )) {
    Students x = new Students( key );
    P1.units.add( x );
    System.out.println("new unit");
  }
}