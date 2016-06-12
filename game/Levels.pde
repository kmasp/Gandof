class Levels {
  
  //instance vars
  int level; //current level
  Player P1; //Player
  Opponent O1; //Opponent
  
  //constructor
  Levels( Player p, int l ) {
   P1 = p; 
   level = l;
   O1 = new Opponent( level );
  }
  
  
  //Processing methods
  
  Player draw() {
    
    return P1; 
  }

  
} //end class