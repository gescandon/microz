    float framerate = 30; // our "sketch" will have a framerate of 24 frames per second.
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

    float angle;

    float cosine;

    float jitter;

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
      frameRate(framerate);
      brad = loadImage("public/images/Brad-3x4-300-dpi.png");
    }



    void draw() {
      background(#ffffff);

      

      if(second()%2 == 0){

        jitter = (random(-0.1, 0.1));

      }

      angle = angle + jitter;

      cosine = cos(angle);

      

      translate(width/2, height/2);
      rect(0,0,10,10);
      rotate(cosine);
      translate(-brad.width/16, -brad.height/8);
      image(brad, 0, 0, w/8, h/2);
    }
 
   interface FibberBox {
     void draw();
   }
