
PImage back;
PImage castle1;
PImage castle2;


void setup() {
    size(640,360);
    back = loadImage("grasssky.jpg");
    castle1 = loadImage("castle.png");
    castle2 = loadImage("castle.png");
    smooth();
    noLoop();
}

void draw() {
    image(back,0,0);
}