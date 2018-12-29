class Clock{
int cx, cy;  // the start center for the clock

float SR;               // second radius
float MR;               // minute radius
float HR;               // hour radius
float CD;               // clock diameter

float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;


Clock(){
  
  cx = width / 2;
  cy = height / 2;
int radius = min(width, height) / 2;
  SR = radius * 0.72;
  MR = radius * 0.60;
  HR = radius * 0.50;
  CD = radius * 1.8;


}
void clockwise(){
   stroke(255);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * SR, cy + sin(s) * SR);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * MR, cy + sin(m) * MR);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * HR, cy + sin(h) * HR);
  strokeWeight(2);
}
}
