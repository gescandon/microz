    float framerate0 = 0.9; // our "sketch" will have a framerate of 24 frames per second.
    int w = Math.round(0.7*screen.width);
    int h = Math.round(0.7*screen.height);
    color[] colorz = new color[5];
    colorz[0] = color(136, 225, 37); //#88E125;
    colorz[1] = color(252, 71, 140); //#fc478c;
    colorz[2] = color(255, 252, 23); //#fffc17;
    colorz[3] = color(0, 168, 240); //#00a8f0;
    colorz[4] = color(0, 0, 0); //#000000;

    int cindex;
    int fibdex;
    int[] fibs = {1, 2, 3, 5, 8};

    void setFibdex() {
      fibdex = fibs[Math.round(4*Math.random(1))];
    }

    void setCindex() {
      cindex = Math.round(3*Math.random(1));
    }
 
  Fibbox[] fibbox = new Fibbox[3];
  
   void setup() {
     size(w,h);
    frameRate(framerate0);
    background(#000000);

    for (int i = 0; i < 3; i++) {
      fibbox[i] = new Fibbox(i*w/3,0,w/3,h);
     }      
   }
 

   void draw() {
    background(#000000);
    for (int i = 0; i < 3; i++) {
      fibbox[i].draw();
     }      
   }
 
   interface FibberBox {
     void draw();
   }

   class Fibbox implements FibberBox   {
     int x,y,w,h;
     int step=0;
     int fh;
     boolean initial;
     int[] fharr;
     color[] clrarr;

     Fibbox(int x, int y, int w, int h) {
       this.x = x;
       this.y = y;
       this.w = w;
       this.h = h;  
       this.initial = true;     
     }
  
     void draw() {

       float s = second();
       float r = s%4;
       stroke(#000000);
       println(r);
       setFibdex();
       if (initial || r < 1) {
        fharr = new int[fibdex];
        clrarr = new color[fibdex]
       }

       for (int i = 0; i < fibdex; i++) {
         if (initial || r < 1) {
            setCindex();
            clrarr[i] = cindex;
            fill(colorz[cindex]);
            fh = (int) Math.round(w/fibdex);
            fharr[i] = fh;
            initial = false;     
          } else {
            fill(colorz[clrarr[i]]);
            fh = fharr[i];
          }
          rect(x + i * fh,y,fh,h); 
       }
      
     }
   }