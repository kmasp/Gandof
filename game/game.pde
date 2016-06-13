//import packages needed
import java.util.Stack;
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

//booleans- global vars; detects 'stage' of game
boolean playing = true;
boolean intro = true;
boolean level1 = false;
boolean level2 = false;
boolean level3 = false;
boolean level4 = false;
boolean level5 = false;
boolean level6 = false;
boolean level7 = false;
boolean level8 = false;
boolean level9 = false;
boolean level10 = false;

//objects
Player P1 = new Player();
Levels L1 = new Levels( P1, 1 );

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
}

void draw() {
  if( intro ) {
    //Note: This will be added to the game screen at one point
    System.out.println("Welcome Player.");
    delay(1000);
    System.out.println("This is a castle defense game. You will be given MANA to use at the beginning of every round, and you must purchase units in order to defend your castle.");
    delay(1000);
    System.out.println("If you do not defend your castle, then you will lose a life and die.");
    delay(1000);
    System.out.println("In order to purchase a unit, type a number on your keyboard from 1-7, inclusive. It corresponds to the units on display at the bottom of the screen.");
    delay(1000);
    System.out.println("Click ENTER to begin.");
    delay(1000);
    resetScreen();
    intro = false;
  }
    
  //LEVEL 1
  if( playing && level1 ) {
    System.out.println("Level 1");
    L1.draw();
    //level1 = false;
    //level2 = true;
  }
    
  /*
  //LEVEL 2
  if( playing && level2 ) {
    reset();
    System.out.println("Level 2");
    Levels L2 = new Levels( P1, 2 );
    L2.draw();
    level2 = false;
    level3 = true;
  }
  */
  
  //System.out.println("1");
    
}


//User input for keys pressed
void keyPressed() {
  if( playing ) {
    if( key == '1' ) {
      if( purchase(2) ) {
        Students x = new Students( 1 );
        P1.units.add( x );
        System.out.println("new unit");
      }
    }
    if( key == '2' ) {
      if( purchase(4) ) {
        Students x = new Students( 2 );
        P1.units.add( x );
        System.out.println("new unit");
      }
    }
    if( key == '3' ) {
      if( purchase(8) ) {
        Students x = new Students( 3 );
        P1.units.add( x );
        System.out.println("new unit");
      }
    }
    if( key == '4' ) {
      if( purchase(16) ) {
        Students x = new Students( 4 );
        P1.units.add( x );
        System.out.println("new unit");
      }
    }
    if( key == '5' ) {
      if( purchase(32) ) {
        Students x = new Students( 5 );
        P1.units.add( x );
        System.out.println("new unit");
      }
    }
    if( key == '6' ) {
      if( purchase(64) ) {
        Students x = new Students( 6 );
        P1.units.add( x );
        System.out.println("new unit");
      }
    }
    if( key == '7' ) {
      if( purchase(128) ) {
        Students x = new Students( 7 );
        P1.units.add( x );
        System.out.println("new unit");
      }
    }
  }
  
  if( key == ENTER || key == RETURN ) {
    level1 = true; 
  }
  
}

boolean purchase( int amount ) {
  if( P1.getMana() >= amount ) {
    P1.setMana( P1.getMana() - amount );
    return true;
  }
  return false;
}


//'resets' the screen to game mode
void resetScreen() {
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
}