void gameover() {
  intro.pause();
  background(lilac);
  image(trophy, 0, 0, width, height);
  
  if (leftscore > rightscore) {
    fill(darkpurple);
    textSize(100);
    text("LEFT WINS!", width/2, height/2);
  } else if (rightscore > leftscore) {
    fill(darkpurple);
    textSize(100);
    text("RIGHT WINS!", width/2, height/2);
  }
    
}

void gameoverClicks() {
  mode = INTRO;
  
  //initialize paddlers
  leftx = 0;
  lefty = height/2;
  
  rightx = width;
  righty = height/2;
  
  //initialize ball
  ballx = width/2;
  bally = height/2; 
  vx = random(-5, 5);
  vy = random(-5, 5);
  
  //initialize score
  leftscore = rightscore = 0;
  timer = 100;
}
