class Levels {

  //instance vars
  int TOE; //types of enemies, the higher the level is the more diverse the enemies will be (Level 1 there will only be Genkinas.. etc)
  int Level;// increase this after every round in the driver file?
  
  //constructor
  Levels() {
  ifelse (Level < 10) {
  TOE = 2;
  }
  ifelse (Level > 10 && Level < 20 {
  TOE = 4;
  }
  ifelse (Level > 20 && Level < 30) {
  TOE = 6;
  }
  else {
  TOE = 8;
  }
  
  }
  
  
  void play() {
  }
}
