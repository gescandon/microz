    float framerate = 30; // our "sketch" will have a framerate of 24 frames per second.
    int w = Math.round(0.9*screen.width);
    int h = Math.round(0.85*screen.height);;
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

    float jitterx;
    float jittery;

    float xx = w/3;
    float yi = h/3;
    float yf = h*2/3;
    float yy = yi;

    float imgh;
    float imgw;
    float ydelta;
    float xdelta;

    void setFibdex() {
      fibdex = fibs[Math.round(4*Math.random(1))];
    }

    void setCindex() {
      cindex = Math.round(3*Math.random(1));
    }

    // @pjs preload must be used to preload the image

    /* @pjs preload="public/img/shocking_pink.png"; */

    PImage b;
    PImage brad;

    void setup() {
      size(w,h);
      frameRate(framerate);
      background(#000000);
      cloud = loadImage("public/img/woof.png");
      bimg = loadImage("public/img/bimg.jpg");
      imgh = h/10;
      imgw = w/10;
      ydelta =  (random(1, 2));
      xdelta = (random(-5, 5));      
    }



    void draw() {
      background(#ffffff);
      image(bimg, 0, 0, w, h);

      if(second()%2 == 0){

        jitterx = (random(-1, 1));
        jittery = (random(-1, 1));

      }

      
      bradw = w/4;
      bradh = h/4;
      if ((yy < 0) || (yy > yf)) {
        xx = w/3;
        yy = h/3;
        imgh = h/50;
        imgw = w/50;
        ydelta =  (random( 0, 1.0));
        if (ydelta < 0.4) {
          ydelta = random(-1.0, -0.4);
        }
        xdelta = (random(-2, 2));
      } else {
        yy = yy + ydelta;
        xx = xx - xdelta;
        imgh = imgh * (1.02);
        imgw = imgw * (1.02);
      }
      //println("xd: " + xdelta + " :: yd: " + ydelta);
      image(cloud, xx + jitterx, yy + jittery, imgw, imgh);
    }
 
   interface FibberBox {
     void draw();
   }

