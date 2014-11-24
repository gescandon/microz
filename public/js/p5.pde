    float framerate = 60; // our "sketch" will have a framerate of 24 frames per second.
  
    
    String[] colorz = new String[3];
    colorz[0] = "#88E125";
    colorz[1] = "#fc478c";
    colorz[2] = "#fffc17";
    colorz[3] = "#00a8f0";

    int[] fibs = [1, 2, 3, 5, 6];
    String[] blokz = ["#c1", "#c2", "#c3", "#c4"];

  Bouncer[] bouncer = new Bouncer[2];
 
   void setup() {
     size(800,600);
     frameRate(framerate);
     stroke(#00a8f0);
     fill(#fc478c);
      int ball_radius = width/10; // ball administration: ball radius
      bouncer[0] = new Ball(width/3,20,ball_radius);
      bouncer[1] = new Box(2*width/3,20,ball_radius,ball_radius);
   }
 

   void draw() {
     for(int b=0, end=bouncer.length; b<end;b++) {
       bouncer[b].computeNextStep(width, height, frameRate);
     }
     background(#88E125);
     for(int b=0, end=bouncer.length; b<end;b++) {
       bouncer[b].draw();
     }
   }
 
   interface Bouncer {
     void computeNextStep(int width, int height, float framerate);
     void draw();
   }

   class Box implements Bouncer   {
     int x,y,w,h;
     int step=0;
 
     Box(int x, int y, int w, int h) {
     this.x = x;
     this.y = y;
     this.w = w;
     this.h = h;
   }
  
   void computeNextStep(int sketch_width, int sketch_height, float frame_rate) {
     step++;
     float sin_value = abs(sin(PI/2.0 + (PI*step/(float)frame_rate)));
     float bounce_height = sketch_height/2 * sin_value;
     float ball_height = sketch_height - (bounce_height + h);
     y = (int) (ball_height);
   }
 
   void draw() {
     rect(x,y,w,h);
   }
   }
 
   class Ball implements Bouncer
   {
     int x,y,radius;
     int step = 0;
 
     Ball(int x, int y, int r) {
       this.x = x;
       this.y = y;
       this.radius = r;
     }
 
     void computeNextStep(int sketch_width, int sketch_height, float frame_rate) {
       step++;
       float sin_value = abs(sin(PI*step/(float)frame_rate));
       float bounce_height = sketch_height/2 * sin_value;
       float ball_height = sketch_height - (bounce_height + radius);
       y = (int) (ball_height);
     }
 
     void draw() {
       ellipse(x,y,radius,radius);
     }
   }