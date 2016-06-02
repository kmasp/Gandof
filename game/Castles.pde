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
  }
  
  void draw() {
    image( castle, 50, 100 );
  }
  
}