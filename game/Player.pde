class Player {
  
  //instance vars
  int[] mana; //amount of mana; [current, max]
  int manaRegen; //rate at which mana regenerates
  int gold; //amount of gold
  
  //constructor
  Player() {
    mana = new int[2];
    mana[0] = 100;
    mana[1] = 100;
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
  
  void increaseMana() {
   setMana( getMana() + 1 ); 
  }
  
} //end class