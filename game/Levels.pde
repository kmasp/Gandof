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
  
  
  //methods
  
  //attack
  void attack() {
    if( !(P1.currUnits.isEmpty()) && !(O1.currUnits.isEmpty()) ) {
       Students s1 = P1.currUnits.get(0);
       Enemies e1 = O1.currUnits.get(0);
       s1.setHealth( s1.getHealth() - e1.getPower() );
       e1.setHealth( e1.getHealth() - s1.getPower() );
       if( s1.isAlive() ) {
         P1.currUnits.add( 0, s1 );
       }
       if( e1.isAlive() ) {
         O1.currUnits.add( 0, e1 ); 
       }
    }
    else if( !(P1.currUnits.isEmpty()) ) {
      Students s1 = P1.currUnits.get(0);
      O1.setCastleHealth( O1.getCastleHealth() - s1.getPower() );
      P1.currUnits.add( 0, s1 );
    }
  }
  
  
  //Processing methods
  
  void setup() {
    loop();
  }
  
  Player draw() {
    setup();
    P1.draw();
    O1.draw();
    System.out.println("hi");
    if( !playing ) {
      noLoop();
    }
    return P1; 
  }

  
} //end class