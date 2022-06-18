void game() {
  intro.play();
  background(lilac);

  //paddles
  fill(murkygreen);
  circle(leftx, lefty, leftd);
  fill(seablue);
  circle(rightx, righty, rightd);
  stroke(black);
  
  //line
  stroke(white);
  strokeWeight(5);
  line(width/2, 0, width/2, height);

  //ball
  fill(tan);
  stroke(black);
  circle(ballx, bally, balld);
  
  //scoreboard 
  textSize(50);
  fill(darkgreen);
  text(leftscore, width/4, 100);
  fill(seablue);
  text(rightscore, 3*width/4, 100);
  timer = timer - 1;
  
  //text to pause
  fill(darkpurple);
  textSize(50);
  text("click to pause", width/2, 500);

  //move paddles
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty + 5;
  } else {
    if (bally > righty) {
      righty = righty + 5;
    } else if (bally < righty) {
      righty = righty - 5;
    }
  }
  
  //move ball
  if (timer < 0) {
  ballx = ballx + vx;
  bally = bally + vy;
  }
  
  //scoring
  if (ballx < 0) {
    rightscore++;
    scoring.rewind();
    scoring.play();
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  
  if (ballx > width) {
    leftscore++;
    scoring.rewind();
    scoring.play();
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  
  //bouncing
  if (bally <= balld/2 || bally >= height-balld/2) {
    vy = -vy;
    bouncing.rewind();
    bouncing.play();
  }
  
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
    bouncing.rewind();
    bouncing.play();
  }
  
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {
   vx = (ballx - leftx)/10;
   vy = (bally - lefty)/10;
   bouncing.rewind();
   bouncing.play();
  }
  
  //boundaries
  righty = min(righty, height); //bottom
  righty = max(righty, 0); //top
  lefty = min(lefty, height);
  lefty = max(lefty, 0);
  
  //GAMEOVER
   if (leftscore >= 3) {
    mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
  }
  
  if (rightscore >= 3) {
     mode = GAMEOVER; 
     gameover.rewind();
     gameover.play();
  }
}

void gameClicks () {
  mode = PAUSE;
}
