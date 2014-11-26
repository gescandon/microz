    float framerate0 = 0.3; // our "sketch" will have a framerate of 24 frames per second.
    int w = Math.round(0.85*screen.width);
    int h = Math.round(0.7*screen.height);
    color[] colorz = new color[5];
    colorz[0] = color(136, 225, 37); //#88E125;
    colorz[1] = color(252, 71, 140); //#fc478c;
    colorz[2] = color(255, 252, 23); //#fffc17;
    colorz[3] = color(0, 168, 240); //#00a8f0;
    colorz[3] = color(0, 0, 0); //#000000;

    int cindex;
    int fibdex;
    int[] fibs = {1, 2, 3, 5, 8};

    void setFibdex() {
      fibdex = fibs[Math.round(4*Math.random(1))];
    }

    void setCindex() {
      cindex = Math.round(3*Math.random(1));
    }
 
   void setup() {
     size(w,h);
    frameRate(framerate0);
    background(#000000);
   }
 

   void draw() {
    background(#000000);
    var fibbox;
    for (int i = 0; i < 3; i++) {
      fibbox = new Fibbox(i*w/3,0,w/3,h);
      fibbox.draw();
     }      
   }
 
   interface FibberBox {
     void draw();
   }

   class Fibbox implements FibberBox   {
     int x,y,w,h;
     int step=0;
     int fh;

     Fibbox(int x, int y, int w, int h) {
       this.x = x;
       this.y = y;
       this.w = w;
       this.h = h;
       setFibdex();
       fh = (int) Math.round(w/fibdex);
       setCindex();
     }
  
     void draw() {

       float s = second();
       float r = s%3;
       
       setFibdex();
       for (int i = 0; i < fibdex; i++) {
        stroke(#000000);
            setCindex();
        fill(colorz[cindex]);
        fh = (int) Math.round(w/fibdex);
        rect(x + i * fh,y,fh,h);      
       }
      
     }
   }