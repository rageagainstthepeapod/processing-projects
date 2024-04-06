import processing.javafx.*;
static GameSketch gameSketch;

class GameSketch extends PApplet {

  GameSketch() {
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }

  void settings() {
    fullScreen(FX2D);
    smooth(4);
  }

  void setup() {
    background(255);
    frameRate(60);
  }

  void draw() {
    background(255);

    for (int i=0; i<bubbles.length; i++) {
      bubbles[i].display();
      bubbles[i].ascend();
      bubbles[i].edge();
    }

    text("fps :"+frameRate, 20, 20);
  }

  void mouseClicked() {
    for (int i=0; i<100; i++) {
      Bubble b = new Bubble();
      bubbles = (Bubble[])append(bubbles, b);
    }
  }



  void setup() {
    gameSketch = new GameSketch();
  }



class Bubble {
  float x;
  float y;
  float r;
  float n;
  color c = color(random(255), random(255), random(255), random(255));
  float speed;

  Bubble() {
    x = random(width);
    y = height+r;
    r = random(2, 6);
    speed = random(1, 4);
  }

  Bubble(float tempR) {
    x = random(width);
    y = height+r;
    r = tempR;
    speed = random(2, 6);
  }

  Bubble(float tempR, float tempS) {
    x = random(width);
    y = height+r;
    r = tempR;
    speed = tempS;
  }

  void display() {
    fill(c);
    stroke(100);
    strokeWeight(2);
    circle(x, y, 2*r);
  }

  void ascend() {
    x = x+random(-5, 5);
    y = y - speed;
  }

  void edge() {
    if (x<=r) {
      circle(x+width, y, 2*r);
    } else if (x>=width-r) {
      circle(x-width, y, 2*r);
    }

    if (y<=r&&y>=-r) {
      circle(x, y+height, 2*r);
      if (x<=r) {
        circle(x+width, y+height, 2*r);
      } else if (x>=width-r) {
        circle(x-width, y+height, 2*r);
      }
    } else if (y<=-r) {
      y = y+height;
    }
  }
}
