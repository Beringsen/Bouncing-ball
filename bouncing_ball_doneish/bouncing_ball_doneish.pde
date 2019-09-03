// Variablerne til bold
int ballX = 0, ballY = 0;

// Boksens koordinater
int boxX = 0, boxY = 0;

// Radius på bolden
int rad= 20;

// Boksens størrelse
int boxSize = 500;

// Farten på bolden
int xSpeed = 6, ySpeed = 4;

//  Holder sig i centreret
int a = 1;

// Gør det mindre/større
int b = 2;


void setup () {
  // Størrelsen af min tegneflade ting
  size(500, 500);
    colorMode(HSB);//Ramdom farve 
}

float c; //hjælper med at gøre farven random

void draw () {
     if (c >= 255)  c=0;  else  c++; //hjælper også med farven 
  // Farven på bagrunden
  background(255);

  // Dette bevæger bolden
  ballX += xSpeed;

  // dette får boksen til at blive mindre
  boxX += a;
  boxY += a;
  boxSize -= b;

  // dette gør så bolden ikke går ud fra boksen
  if (ballX> boxSize + boxX || ballX< boxX) {
    xSpeed *= -1;
  }

  if (ballX> boxSize + boxX) {
    ballX -= 10;
  }
  if (ballX< boxX) {
    ballX += 10;
  } 

  ballY += ySpeed;
  if (ballY> boxSize + boxY ||ballY< boxY) {
    ySpeed *= -1;
  } 

  if (ballY> boxSize + boxY) {
    ballY -= 10;
  }
  if (ballY< boxY) {
    ballY += 10;
  }

// Farver og hvor boksen bliver tegnet
  fill(0);
  stroke(204, 102, 0);
  rect(boxX, boxY, boxSize, boxSize);
  // Farven og hvor bolden bliver tegnet
  fill(c,255,255);//c'et gør at farven bliver rengbuefarvet
  noStroke();
  ellipse(ballX, ballY, rad, rad);

  //Sørge for boksen holder størrelsen 
  if (boxSize < 40 || boxSize > 550 ) {
    a *= -1;
    b *= -1;
  }
}
