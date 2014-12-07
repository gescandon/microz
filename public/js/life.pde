// All Examples Written by Casey Reas and Ben Fry

// unless otherwise stated.

int sx, sy; 
int w = Math.round(0.7*screen.width);
int h = Math.round(0.7*screen.height);
color[] colorz = new color[5];
colorz[0] = color(136, 225, 37); //#88E125;
colorz[1] = color(252, 71, 140); //#fc478c;
colorz[2] = color(255, 252, 23); //#fffc17;
colorz[3] = color(0, 168, 240); //#00a8f0;
colorz[4] = color(0, 0, 0); //#000000;
int cindex;

void setCindex() {
  cindex = Math.round(3*Math.random(1));
}

float density = 0.5; 

int[][][] world;

void setup() 

{ 

  size(w, h);
  background(0); 

  frameRate(12);

  sx = width;

  sy = height;

  world = new int[sx][sy][2]; 
  
  setCindex()
  stroke(colorz[cindex]); 

   

  // Set random cells to 'on' 

  for (int i = 0; i < sx * sy * density; i++) { 

    world[(int)random(sx)][(int)random(sy)][1] = 1; 

  } 

} 

 

void draw() 

{ 

  background(0); 

  

  // Drawing and update cycle 

  for (int x = 0; x < sx; x=x+1) { 

    for (int y = 0; y < sy; y=y+1) { 

      //if (world[x][y][1] == 1) 

      // Change recommended by The.Lucky.Mutt

      if ((world[x][y][1] == 1) || (world[x][y][1] == 0 && world[x][y][0] == 1)) 

      { 

        world[x][y][0] = 1; 

        point(x, y); 

      } 

      if (world[x][y][1] == -1) 

      { 

        world[x][y][0] = 0; 

      } 

      world[x][y][1] = 0; 

    } 

  } 

  // Birth and death cycle 

  for (int x = 0; x < sx; x=x+1) { 

    for (int y = 0; y < sy; y=y+1) { 

      int count = neighbors(x, y); 

      if (count == 3 && world[x][y][0] == 0) 

      { 

        world[x][y][1] = 1; 

      } 

      if ((count < 2 || count > 3) && world[x][y][0] == 1) 

     { 

        world[x][y][1] = -1; 

      } 

    } 

  } 

} 

 

// Count the number of adjacent cells 'on' 

int neighbors(int x, int y) 

{ 

  return world[(x + 1) % sx][y][0] + 

         world[x][(y + 1) % sy][0] + 

         world[(x + sx - 1) % sx][y][0] + 

         world[x][(y + sy - 1) % sy][0] + 

         world[(x + 1) % sx][(y + 1) % sy][0] + 

         world[(x + sx - 1) % sx][(y + 1) % sy][0] + 

         world[(x + sx - 1) % sx][(y + sy - 1) % sy][0] + 

         world[(x + 1) % sx][(y + sy - 1) % sy][0]; 

}