void pause() {
  intro.pause();
  fill(darkpurple);
  textSize(100);
  text("PAUSE", width/2, height/2);
  
  fill(lilac);
  stroke(lilac);
  rect(420, 450, 150, 100); 
  
  fill(darkpurple);
  textSize(50);
  text("play", 460, 500);
}

void pauseClicks() {
  mode = GAME;
}
