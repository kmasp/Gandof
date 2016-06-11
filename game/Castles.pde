class Castles {
  PImage castle;
 
  //instance vars
  int health;
  
  //constructors
  Castles() {
   health = 100; 
  }
  
  Castles( int level ) {
    health = 100 * level;
  }
  
  int getHealth() {
    return health;
  }
  
  void setHealth( int newHealth ) {
    health = newHealth;
  }
  
  void setup() {
   castle = loadImage("castle.png"); 
   castle.resize(75,75);
  }
  
  void draw() {
    setup();
    image( castle, 30, 225 );
    image( castle, 550, 225 );
  }
  
} //end class