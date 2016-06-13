class Opponent {
  
  //instance vars
  int level; //current level
  Stack<Enemies> unitsE = new Stack(); //pregenerated list of enemies
  ArrayList<Enemies> currUnits; //current enemies
  long currFrame; //current frame count
  int[] castle; //castle health; [current, max]
  boolean alive = true; //if opponent is not alive, level won
  boolean moving = true; //if opponent's units are moving or not
  
  //constructor
  Opponent( int currLevel ) {
    level = currLevel;
    populate( level );
    currFrame = frameCount;
    currUnits = new ArrayList<Enemies>();
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
  
  
  //Processing Methods
  
  void setup() {
    loop();
  }
  
  void draw() {
    if( !alive ) {
      if( currUnits.size() > 0 ) {
        for( Enemies x : currUnits ) {{
            x.draw();
          }
        }
      }  
    } //end main if
    else {
      noLoop(); 
    }
  }
  
} //end class