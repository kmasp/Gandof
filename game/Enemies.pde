PImage picE;

class Enemies {
  
  /*
  Types of Enemies and Cost
  1 -- 002 -- Genkina
  2 -- 004 -- Holmes
  3 -- 008 -- Brooks
  4 -- 016 -- Platek
  5 -- 032 -- K
  6 -- 064 -- DW
  7 -- 128 -- Brown
  */  
  
  //instance vars
  int health;   //how much health an enemy has
  //int speed;    //how fast an enemy travels
  int power;    //how strong an enemy is
  int type;     //what type of enemy is this
  int cooldown; //!!how long you have to wait before the next unit is deployed
  boolean alive; //if enemy is alive or dead
  int xcor; //x coordinate
  int ycor; //y cordinate
  int w; //unit width
  int h; //!!unit height
  
  
  //constructors
  Enemies( int newType ) {
    //Genkina
    if( newType == 1 ) {
      health = 25;
      power = 5;
    }
    //Holmes
    else if( newType == 2 ) {
      health = 50;
      power = 10;
    }
    //Brooks
    else if( newType == 3 ) {
      health = 75;
      power = 15;
    }
    //Platek
    else if( newType == 4 ) {
      health = 80;
      power = 20;     
    }
    //K
    else if( newType == 5 ) {
      health = 100;
      power = 25;
    }
    //DW
    else if( newType == 6 ) {
      health = 200;
      power = 20;
    }
    //Brown
    else {
      health = 500;
      power = 30;
    }
    type = newType;
    //cooldown = type * type;
    alive = true;
    xcor = 860;
    ycor = 205;
    h = 50;
    w = 50;
  }
  
  
  //methods
  
  //makes student 'walk'
  void changeX() {
    if( xcor - 2 >= 120 ) {
      xcor -= 2;
    }
  }
  
  //returns X cor
  int getX() {
    return xcor; 
  }
  
  //returns an enemies's power
  int getPower() {
    return power;
  }
  
  //returns if an enemy is alive
  boolean isAlive() {
    return alive; 
  }
  
  //returns the current health of an enemy
  int getHealth() {
    return health; 
  }
  
  //changes amount of health an enemy has; changes from alive to dead if needed
  void setHealth( int newHealth ) {
    health = newHealth;
    if( health <= 0 ) {
      alive = false;
    }
  }
  
  
  //Processing Methods
  
  void setup() {
    picS = loadImage(type+".png"); //temp, until enemy pics are generated
  }
 
  void draw() {
    setup();
    image(picS, xcor, ycor, w, h);
  }
  
  
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
  }
  
} //end class