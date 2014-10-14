    float framerate = 2; // our "sketch" will have a framerate of 24 frames per second.
    int w = Math.round(0.9*screen.width);
    int h = 600;
    color[] colorz = new color[4];
    colorz[0] = color(136, 225, 37); //#88E125;
    colorz[1] = color(252, 71, 140); //#fc478c;
    colorz[2] = color(255, 252, 23); //#fffc17;
    colorz[3] = color(0, 168, 240); //#00a8f0;
    int cindex;
    int fibdex;
    int[] fibs = {1, 2, 3, 5, 8};

    void setFibdex() {
      fibdex = fibs[Math.round(4*Math.random(1))];
    }

    void setCindex() {
      cindex = Math.round(3*Math.random(1));
    }

    // @pjs preload must be used to preload the image

    /* @pjs preload="public/images/Brad-3x4-300-dpi.png"; */

    PImage b;
    PImage brad;

    void setup() {
      size(w,h);
      brad = loadImage("public/images/Brad-3x4-300-dpi.png");
      noLoop();
    }



    void draw() {
      image(brad, w/2, 0, w/4, h);
    }
 
   interface FibberBox {
     void draw();
   }

   class Fibbox implements FibberBox   {
     int x,y,w,h;
     int step=0;
 
     Fibbox(int x, int y, int w, int h) {
     this.x = x;
     this.y = y;
     this.w = w;
     this.h = h;
     }
  
     void draw() {

       setFibdex();
       for (int i = 0; i < fibdex; i++) {
        setCindex();
        stroke(#000000);
        fill(colorz[cindex]);
        float fh = Math.round(w/fibdex);
        rect(x + i * fh,y,fh,h);      
       }
       
     }
   }