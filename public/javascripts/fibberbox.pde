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
 
   void setup() {
     size(w,h);
     frameRate(framerate);
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
 
     Fibbox(int x, int y, int w, int h) {
     this.x = x;
     this.y = y;
     this.w = w;
     this.h = h;
     }
  
     void draw() {

       fibdex = fibs[Math.round(4*Math.random(1))];
       println('fibdex:'+fibdex);
       for (int i = 0; i < fibdex; i++) {
        cindex = Math.round(3*Math.random(1));
        stroke(#000000);
        fill(colorz[cindex]);
        float fh = Math.round(w/fibdex);
        println(fh);
        rect(x + i * fh,y,fh,h);
        //rect(x,y,w,h);
       }
       
     }
   }