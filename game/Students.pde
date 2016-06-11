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
  int cooldown; //how long you have to wait before the next unit is deployed
  int type; //what type of student this is
  
  //constructors
  Students( int newType ) {
    //Freshies
    if( newType == 1 ) {
      health = 25;
      power = 5;
      cost = 2;
    }
    //Sophs
    else if( newType == 2 ) {
      health = 35;
      power = 10;
      cost = 4;
    }
    //IntroCS
    else if( newType == 3 ) {
      health = 45;
      power = 15;
      cost = 8;
    }
    //Juniors
    else if( newType == 4 ) {
      health = 55;
      power = 20;
      cost = 16;      
    }
    //APCS
    else if( newType == 5 ) {
      health = 65;
      power = 25;
      cost = 32;
    }
    //Seniors
    else if( newType == 6 ) {
      health = 75;
      power = 30;
      cost = 64;
    }
    //CS Dojo Sensei
    else {
      health = 150;
      power = 50;
      cost = 128;
    }
    type = newType;
    cooldown = cost * cost;
  }
}
  
  //methods