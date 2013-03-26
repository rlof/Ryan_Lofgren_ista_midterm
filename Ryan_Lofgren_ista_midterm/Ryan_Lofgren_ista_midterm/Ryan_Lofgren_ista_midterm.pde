int p1 = 0;
int p2 = 0;
//win = 1
int win1 = 0;
int win2 = 0;
int bar1 = 0;
int bar2 = 0;

void setup() {
  size(600,600);
  background(0);
}


void mousePressed() {
  p1 = p1 + 1;
  bar1 = ((p1/50)*600);
  if (p1 == 50) {
    win1 = 1;
  }
}

void keyPressed() {
  if (key == ' ') {
    p2 = p2 + 1;
    bar2 = ((p2/50)*600);
    if (p2 == 50) {
      win2 = 1;
    }
  }
}

void draw() {
  if (win1 == 1) {
    //DO WIN THINGS HERE
   background(255);
   fill(100);
   text("Player 1 Wins!",100,250);
   text("Player 2 You Suck",20,300);
  } else if (win2 == 1) {
  // DO WIN THINGS HERE
   background(255);
   fill(100);
   text("Player 2 Wins!",100,250);
   text("Player 1 You Suck",20,300);
  } else {
    win1 = 0;
    win2 = 0;
    background(0);
    fill(0,255,0);
    rect(0,0,300,p1);
    fill(0,0,255);
    rect(300,0,300,p2);
    textSize(64);
    fill(255);
    text("Player 1", 30,100);
    text("Player 2", 330,100);
    fill(255);
    //Increase score size
    textSize(p1+30);
    text(p1,130,300);
    textSize(p2+30);
    text(p2,430,300);
    
  }
    
}

