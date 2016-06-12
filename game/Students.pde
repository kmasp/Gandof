PImage picS;

class Students {
  
  /*
  Types of Students & Costs
  1 -- 002 -- Freshies
  2 -- 004 -- Sophs
  3 -- 008 -- IntroCS
  4 -- 016 -- Juniors
  5 -- 032 -- APCS
  6 -- 064 -- Seniors 
  7 -- 128 -- CS Dojo Sensei
  */
  
  //instance vars
  int health;  //how much health a student has
  //int speed;   //how fast a student travels
  int power;   //how strong a student is
  int cost;    //how much a student costs to buy (mana)
  int cooldown; //how long you have to wait to deploy this unit
  int type; //what type of student this is
  boolean alive; //if student is alive or dead
  int xcor; //x coordinate
  int ycor; //y cordinate
  int w; //unit width
  int h; //unit height
  
  //constructor
  Students( int newType ) {
    //Freshies
    if( newType == 1 ) {
      health = 25;
      power = 5;
      cost = 2;
      h = 50;
    }
    //Sophs
    else if( newType == 2 ) {
      health = 50;
      power = 10;
      cost = 4;
      h = 50;
    }
    //IntroCS
    else if( newType == 3 ) {
      health = 75;
      power = 25;
      cost = 8;
      h = 46;
    }
    //Juniors
    else if( newType == 4 ) {
      health = 75;
      power = 45;
      cost = 16;  
      h = 56;
    }
    //APCS
    else if( newType == 5 ) {
      health = 100;
      power = 45;
      cost = 32;
      h = 59;
    }
    //Seniors
    else if( newType == 6 ) {
      health = 200;
      power = 30;
      cost = 64;
      h = 56;
    }
    //CS Dojo Sensei
    else {
      health = 300;
      power = 50;
      cost = 128;
      h = 41;
    }
    type = newType;
    cooldown = cost * cost;
    alive = true;
    xcor = 50;
    ycor = 205;
    w = 50;
  }
  
  
  //methods
  
  //makes student 'walk'
  void changeX() {
    xcor++;
  }
  
  //returns a student's power
  int getPower() {
    return power; 
  }
  
  //returns if a student is alive
  boolean isAlive() {
    return alive; 
  }
  
  //returns the current health of a student
  int getHealth() {
    return health; 
  }
  
  //changes amount of health a student has; changes from alive to dead if needed
  void setHealth( int newHealth ) {
    health = newHealth;
    if( health <= 0 ) {
      alive = false;
    }
  }


  //Processing Methods
  
  void setup() {
    picS = loadImage(type+".png");
  }
 
  void draw() {
    setup();
    image(picS, xcor, ycor, w, h);
  }
  
} //end class