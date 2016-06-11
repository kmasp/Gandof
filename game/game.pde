
PImage back;
Castles castle;

void setup() {
    size(640,360);
    back = loadImage("grasssky.jpg");
    smooth();
    noLoop();
}

void draw() {
    image(back,0,0);
    castle.draw();
}

static public void main(String args[]) {
    
}
