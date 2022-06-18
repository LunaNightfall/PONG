void intro() {
  intro.play();
  background(turquoise);
  
  //paddle drawing + ball
  fill(red);
  stroke(red);
  ellipse(width/2, 150, 200, 230); //265
  fill(lightwood);
  stroke(lightwood);
  triangle(350, 250, 450, 250, 400, 320);
  fill(black);
  stroke(lightwood);
  rect(375, 250, 50, 150);
  
  fill(white);
  stroke(white);
  circle(465, 100, 100);
  
  //title
  textSize(30);
  fill(black);
  text("ping", 465, 100);
  
  fill(lilac);
  stroke(lilac);
  textSize(100);
  text("PONG", 400, 180);
  
  //buttons
  fill(white);
  strokeWeight(5);
  if (mouseX > 50 && mouseX < 300 && mouseY > 450 && mouseY < 550) {
    stroke(red);
  } else {
    stroke(black);
  }
  rect(50, 450, 250, 100); 
  fill(black);
  textSize(60);
  text("1-player", 180, 485);
  
  fill(white);
  strokeWeight(5);
  if (mouseX > 500 && mouseX < 750 && mouseY > 450 && mouseY < 550) {
    stroke(red);
  } else {
    stroke(black);
  }
  rect(500, 450, 250, 100);
  fill(black);
  text("2-player", 630, 485);
  
}

void introClicks() {
  //1 player
  if (mouseX > 50 && mouseX < 300 && mouseY > 450 && mouseY < 550) {
  mode = GAME;
  AI = true;
  }
  
  if (mouseX > 500 && mouseX < 750 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
    AI = false;
  }
}
