Bouncer bouncer;
    int w = Math.round(0.5*screen.width);
    int h = Math.round(0.6*screen.height);
 
     // @pjs preload must be used to preload the image

    /* @pjs preload="public/img/Mark-3x4-300-dpi.png"; */
    /* @pjs preload="public/img/Brad-3x4-300-dpi.png"; */
    /* @pjs preload="public/img/KC-3x4-300-dpi.png"; */
    /* @pjs preload="public/img/Geoff-3x4-300dpi.png"; */

    PImage b;
    PImage faceb;
    PImage facem;
    PImage facek;
    PImage faceg;
    PImage[] faces = new PImage[4]; 
    faces[0] = faceb;
    faces[1] = facem;
    faces[2] = facek;
    faces[3] = faceg;
    
   void setup() {
     size(w,h);
     frameRate(24);
     stroke(#003300);
     fill(#0000FF);
     faceb = loadImage("public/img/brad.png");
     facem = loadImage("public/img/mark.png");
     facek = loadImage("public/img/kc.png");
     faceg = loadImage("public/img/geof.png");
     bouncer = new Ball(width/2,20,20);
   }
 
   void draw() {
     background(#000000);
     bouncer.draw();
   }
 
   interface Bouncer {
     void computeNextStep(int width, int height, float framerate);   
     void computeRotation();  
     void draw();
   }
 
   class Ball implements Bouncer
   {
     int x,y,y0,radius;
     int step = 0;
     float angle = 0.0;
     float cosine = 0.0;
     float jitter = 0.0;
     PImage theface;

     Ball(int x, int y, int r) {
       this.x = x;
       this.y = y;
       this.y0 = y;
       this.radius = r;
       this.theface = faceg;
     }
 
     void computeNextStep(int sketch_width, int sketch_height, float frame_rate) {
       step++;
       float sin_value = abs(sin(PI*step*0.1/(float)frame_rate));
       float bounce_height = sketch_height*0.8 * sin_value;
       float ball_height = sketch_height - (bounce_height + radius);
       y = (int) (ball_height);
       if (ball_height > .8 * sketch_height) {
          getNewFace();
       }
     }

     void getNewFace() {
      float x = random(4);
      if (x < 4) {
       theface = facek;
      }
      if (x < 3) {
        theface = faceg;
      }
      if (x < 2) {
        theface = facem;
      }
      if (x < 1) {
        theface = faceb;
      }
     }

     void computeRotation(){
      if(second()%2 == 0){
        jitter = (random(-0.1, 0.1));
      }

      angle = angle + jitter;
      cosine = cos(angle);
     }
 
     void draw() {
     	computeNextStep(width, height, frameRate);
     	computeRotation();
      //rect(0,0,10,10);
      //rotate(cosine);
      //translate(width/2, height/2);
      //translate(-brad.width/16, -brad.height/8);
      

      int x0 =  (int)50 * jitter;
      image(theface, w/3 + x0, y, w/2, h/2);
     }
   }