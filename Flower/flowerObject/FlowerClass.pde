class Flower {

  // Variables

  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int petalColor;//hexadecimal number for the color of petals
  int xdirection = 1;
  int ydirection = 1;
  float xspeed;
  float yspeed;

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor,float tempxspeed, float tempyspeed) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
    xspeed=tempxspeed;
    yspeed=tempyspeed;
  }

  void display () {
    
    flytteflytte();
    flytterigtigt();

    float ballX;
    float ballY;

    fill(petalColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      //  ballX=width/2 + r*cos(i);
      //  ballY=height/2 + r*sin(i);
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
    
  }
  
  //https://processing.org/examples/bounce.html
  void flytteflytte(){
    if (x > width-r || x < r) {
    xdirection *= -1;
  }
  if (y > height-r || y < r) {
    ydirection *= -1;
  }
  
  }
  void flytterigtigt(){
    
   x = x + ( xspeed * xdirection );
  y = y + ( yspeed * ydirection ); 
  }
}
