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
  int speed;    //how fast an enemy travels
  int power;    //how strong an enemy is
  int type;     //what type of enemy is this
  int cooldown; //how long you have to wait before the next unit is deployed
  
  //constructors
  Enemies( int newType ) {
    //Genkina
    if( newType == 1 ) {
      health = 25;
      power = 5;
    }
    //Holmes
    else if( newType == 2 ) {
      health = 35;
      power = 10;
    }
    //Brooks
    else if( newType == 3 ) {
      health = 45;
      power = 15;
    }
    //Platek
    else if( newType == 4 ) {
      health = 55;
      power = 20;     
    }
    //K
    else if( newType == 5 ) {
      health = 65;
      power = 25;
    }
    //DW
    else if( newType == 6 ) {
      health = 75;
      power = 30;
    }
    //Brown
    else {
      health = 200;
      power = 50;
    }
    type = newType;
  }
  
  //methods
  
} //end class