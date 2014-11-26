    float framerate0 = 2; // our "sketch" will have a framerate of 24 frames per second.
    int w = Math.round(0.7*screen.width);
    int h = Math.round(0.7*screen.height);
    color[] colorz = new color[5];
    colorz[0] = color(136, 225, 37); //#88E125;
    colorz[1] = color(252, 71, 140); //#fc478c;
    colorz[2] = color(255, 252, 23); //#fffc17;
    colorz[3] = color(0, 168, 240); //#00a8f0;
    colorz[4] = color(0, 0, 0); //#000000;
    /* @pjs preload="public/img/shocking_yellow.png"; */
    /* @pjs preload="public/img/shocking_pink.png"; */
    /* @pjs preload="public/img/shocking_gr.png"; */
    /* @pjs preload="public/img/shocking_bl.png"; */

    PImage syl;
    PImage syp;
    PImage syb;
    PImage syg;
    PImage[] pigs = new PImage[4];

    int cindex;
    int fibdex;
    int[] fibs = {1, 2, 3, 5, 8};
    int bg0;

    void setFibdex() {
      fibdex = fibs[Math.round(4*Math.random(1))];
    }

    void setCindex() {
      cindex = Math.round(3*Math.random(1));
    }
 
    
   void setup() {
     //stroke(colorz[cindex]);
     syl = loadImage("public/img/shocking_yellow.png");
     syp = loadImage("public/img/shocking_pink.png");
     syb = loadImage("public/img/shocking_bl.png");
     syg = loadImage("public/img/shocking_gr.png");
     pigs[0] = syl;
     pigs[1] = syp;
     pigs[2] = syb;
     pigs[3] = syg;

     size(w,h);
     theface = syg;
     frameRate(framerate0);
     setCindex();
     background(colorz[cindex]); 
     bg0 = cindex;
   }

   void draw() {
      float jitter = 0.0;
      int x0 = 1;
      int y0 = 1;
      
      if(second()%2 == 0){
        jitter = (random(-0.1, 0.1));
      }
      int x0 =  (int)(50 * jitter);
      if(second()%2 == 0){
        jitter = (random(-0.1, 0.1));
      }
      int y0 =  (int)(50 * jitter);
      
      PImage pig;
      if (x0 < 0) {
        pig = pigs[bg0];
      } else {
        setCindex();
        pig = pigs[cindex];
        bg0 = cindex;
      }
      
      image(pig, w/5 + x0 , h/10 + y0, 2*pig.width, 2*pig.height);
   }