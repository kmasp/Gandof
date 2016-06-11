class Player {
  
  //instance vars
  int[] mana; //amount of mana; [current, maxForGame]
  int manaRegen; //rate at which mana regenerates
  int gold; //amount of gold
  Queue<Students> units = new LinkedList<Students>();
  ArrayList<Students> currUnits; //all current students, dead or alive
  int[] castle; //castle health; [current, max]
  
  
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
  }
  
  //set max castle health
  void setMaxCastleHealth( int newHealth ) {
    castle[1] = newHealth;
  }
  
  
  void draw() {
    for( Students x : currUnits ) {
      if( x.alive ) {
        x.changeX();
        x.draw();
      }
    }
  }
  
} //end class