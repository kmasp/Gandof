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
       if( !(s1.isAlive()) ) {
         P1.currUnits.remove( 0 );
       }
       if( !(e1.isAlive()) ) {
         O1.currUnits.remove( 0 ); 
       }
    }
    else if( !(P1.currUnits.isEmpty()) ) {
      Students s1 = P1.currUnits.get(0);
      O1.setCastleHealth( O1.getCastleHealth() - s1.getPower() );
      O1.backup();
      O1.backup();
      O1.backup();
    }
    else if( !(O1.currUnits.isEmpty()) ) {
      Enemies e1 = O1.currUnits.get(0);
      P1.setCastleHealth( P1.getCastleHealth() - e1.getPower() );
    }
  }
  
  //moving units
  void move() {
    if( !(P1.currUnits.isEmpty()) && !(O1.currUnits.isEmpty()) ) {
      Students s1 = P1.currUnits.get(0);
      Enemies e1 = O1.currUnits.get(0);
      if( abs( s1.getX() - e1.getX() ) <= 50 ) {
        int stopS = s1.getX();
        int stopE = s1.getX() + 50;
        for( Students s : P1.currUnits ) {
          if( s.getX() + 2 <= stopS ) {
            s.changeX();
          }
        }
        for( Enemies e : O1.currUnits ) {
          if( e.getX() - 2 <= stopE ) {
            e.changeX();
          }
        }
      }
      P1.currUnits.add( 0, s1 );
      O1.currUnits.add( 0, e1 );
    }
    else if( !(P1.currUnits.isEmpty()) ) {
      for( Students s : P1.currUnits ) {
        s.changeX(); 
      }
    }
    else if( !(O1.currUnits.isEmpty()) ) {
      for( Enemies e : O1.currUnits ) {
        e.changeX(); 
      }
    }
  }
  
  
  //Processing methods
  
  void setup() {
  }
  
  void draw() {
    delay(1000);
    P1.createUnits();
    O1.createUnits();
    move();
    P1.draw();
    O1.draw();
    attack();
    System.out.println("hi");
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