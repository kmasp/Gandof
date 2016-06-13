class Opponent {
  
  //instance vars
  int level; //current level
  Stack<Enemies> unitsE = new Stack(); //pregenerated list of enemies
  ArrayList<Enemies> currUnits = new ArrayList<Enemies>(); //current enemies
  int[] castle; //castle health; [current, max]
  boolean alive = true; //if opponent is not alive, level won

  
  //constructor
  Opponent( int currLevel ) {
    level = currLevel;
    populate( level );
    castle = new int[2];
    castle[0] = 100 + level * 5;
    castle[0] = 100 + level * 5;
  }
  
  
  //methods

  //recursively populates the stack of enemies
  void populate( int num ) {
    int pop;
    if( num == 1 ) {
      pop = 15;
      for( ; pop > 0; pop-- ) {
        Enemies x = new Enemies( 1 );
        unitsE.push( x );
      }
    }
    else if( num == 2 ) {
      pop = 25;
      for( ; pop > 15; pop-- ) {
        Enemies x = new Enemies( 2 );
        unitsE.push( x );
      }
      populate( num - 1 );
    }
    else if( num == 3 ) {
      pop = 35;
      for( ; pop > 25; pop-- ) {
        Enemies x = new Enemies( 2 );
        unitsE.push( x );
      }
      populate( num - 1 );
    }
    else if( num <= 5 ) {
      pop = 50;
      for( ; pop > 35; pop-- ) {
        Enemies x = new Enemies( 2 );
        unitsE.push( x );
      }
      populate( num - 1 );
    }
    else if( num <= 8 ) {
      pop = 60;
      for( ; pop > 50; pop-- ) {
        Enemies x = new Enemies( 2 );
        unitsE.push( x );
      }
      populate( num - 1 );
    }
    else if( level <= 14 ) {
      pop = 65;
      for( ; pop > 60; pop-- ) {
        Enemies x = new Enemies( 2 );
        unitsE.push( x );
      }
      populate( num - 1 );
    }
    else {
      pop = 67;
      for( ; pop > 65; pop-- ) {
        Enemies x = new Enemies( 2 );
        unitsE.push( x );
      }
      populate( num - 1 );
    }
  }
  
  //backup enemy generator in case extra enemies are needed
  void backup() {
    int rdm = (int)(Math.random() * 7 + 1);
    Enemies x = new Enemies( rdm );
    unitsE.push( x );
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
  
  //moves from stack to arraylist
  void createUnits() {
    if( unitsE.size() > 0 && (frameCount % 60 == 0 || frameCount <= 1000) ) {
      currUnits.add( unitsE.pop() ); 
    }
  }
  
  //Processing Methods
  
  void setup() {
  }
  
  void draw() {
    if( alive ) {
      if( currUnits.size() > 0 ) {
        for( Enemies x : currUnits ) {
          x.draw();
        }
      }
    }  
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