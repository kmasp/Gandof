class Player {
  
  //instance vars
  int[] mana; //amount of mana; [current, maxForGame]
  int manaRegen; //rate at which mana regenerates
  Queue<Students> units = new LinkedList<Students>(); //Queue of queued units, to be put into currUnits
  ArrayList<Students> currUnits; //all current students, dead or alive
  int[] castle; //castle health; [current, max]
  boolean playerLost = false; //if player lost, game ends
  
  //int gold; //amount of gold Note: NOT YET IMPLEMENTED
  
  
  //constructor
  Player() {
    mana = new int[2];
    mana[0] = 100;
    mana[1] = 100;
    castle = new int[2];
    castle[0] = 100;
    castle[1] = 100;
    currUnits = new ArrayList<Students>();
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
  }
  
  //set max castle health
  void setMaxCastleHealth( int newHealth ) {
    castle[1] = newHealth;
  }
  
  //resets a player to original vals
  void reset() {
    mana[0] = mana[1];
    while( currUnits.size() > 0 ) {
      currUnits.remove(0); 
    }
    while( units.size() > 0 ) {
      units.remove();
    }
    castle[0] = castle[1];
  }
  
  
  //Processing Methods
  
  void setup() {
    
  }
  
  void draw() {
    if( !playerLost ) {
      if( currUnits.size() > 0 ) {
        for( Students x : currUnits ) {
          if( x.alive ) {
            x.changeX();
            x.draw();
          }
        }
      }
      
      if( castle[0] <= 0 ) {
        playerLost = true; 
      }
      
    } //end main if
  } //end draw
  
} //end class