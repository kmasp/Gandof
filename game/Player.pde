class Player {
  
  //instance vars
  int[] mana; //amount of mana; [current, maxForGame]
  int manaRegen; //rate at which mana regenerates
  Queue<Students> units = new LinkedList<Students>(); //Queue of queued units, to be put into currUnits
  ArrayList<Students> currUnits = new ArrayList<Students>(); //all current students, dead or alive
  int[] castle; //castle health; [current, max]
  boolean alive = true; //if player not alive, game ends
  
  int time; //timer
  int wait; //waittime
  boolean isCool = false;
  
  
  //int gold; //amount of gold Note: NOT YET IMPLEMENTED
  
  
  //constructor
  Player() {
    mana = new int[2];
    mana[0] = 100;
    mana[1] = 100;
    castle = new int[2];
    castle[0] = 100;
    castle[1] = 100;
  }
  
  
  //methods
  
  //returns amount of mana player currently has
  int getMana() {
    return mana[0];
  }
  
  //changes amount of mana player currently has
  void setMana( int newM ) {
    mana[0] = newM;
  }
  
  //changes max mana player can get
  void setMaxMana( int newM ) {
    mana[1] = newM;
  }
  
  //increases amount of mana player currently has
  void increaseMana() {
    if( mana[0] >= mana[1] ) {
     setMana( getMana() + 1 ); 
    }
  }
  
  //get current castle health
  int getCastleHealth() {
    return castle[0]; 
  }
  
  //set castle health
  void setCastleHealth( int newHealth ) {
    castle[0] = newHealth;
    if( castle[0] <= 0 ) {
      alive = false;
    }
  }
  
  //set max castle health
  void setMaxCastleHealth( int newHealth ) {
    castle[1] = newHealth;
  }
  
  //resets a player to original vals
  void reset() {
    mana[0] = mana[1];
    currUnits.clear();
    while( units.size() > 0 ) {
      units.remove();
    }
    castle[0] = castle[1];
  }
  
  //moves from queue to ArrayList
  void createUnits() {
    if( units.size() > 0 && (frameCount % 60 == 0 || frameCount <= 1000) ) {
      currUnits.add( units.remove() ); 
    }
  }
  
  //essentially a 3 second timer, if isCool is true: units won't be sent out 
  void cooldown(){
    wait = 3000; //universal 3 second cooldown for all units
    if (millis() - time >= wait)
    {
      isCool = true;
    }
  }
  
  
  //Processing methods
  
  void setup() {
    time = millis();
    loop();
  }
  
  void draw() {
    if( currUnits.size() > 0 ) {
      for( Students x : currUnits ) {{
          x.draw();
        }
      }
    }  
  } //end draw
  
  
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