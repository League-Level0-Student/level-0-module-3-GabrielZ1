//Credit to Daniel Shifman
float x = 240;
float y = 180;
float w = 60;
float h = 60;
float eyeSize = 16;

void setup() {
  size(1000, 1000);
}

void draw() {
  //1.  Draw a white background
background (255,255,255);
  //2. create a color variable. (ask your teacher or check processing.org/reference
color x = color(255,20,8);
  //2. call the method to draw your Zoog. Hint: you will need your color variable.
drawZoog (x); 
  //3. call the method to Jiggle your Zoog
if(mousePressed) {
jiggleZoog(100);
}
//bonus: Only jiggle the zoog when the mouse is pressed  
}

void jiggleZoog(int speed) {
  // Change the x and y location of Zoog randomly
  x = x + random(-.1, .1)*speed;
  y = y + random(-.1, .1)*speed;
  // Constrain Zoog to window
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
}

void drawZoog(color eyeColor) {
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  // Draw Zoog's arms with a for loop
  for (float i = y - h/3; i < y + h/2; i += 10) {
    stroke(0);
    line(x - w/4, i, x + w/4, i);
  }
  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(x, y, w/6, h);
  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(x, y - h, w, h);
  // Draw Zoog's eyes
  fill(eyeColor);
  ellipse(x - w/3, y - h, eyeSize, eyeSize*2);
  ellipse(x + w/3, y - h, eyeSize, eyeSize*2);
  // Draw Zoog's legs
  stroke(0);
  line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
  line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}


