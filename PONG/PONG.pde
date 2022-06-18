import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Alina Cheung
//June 6, 2022
//2-4

//mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty,  rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy;
boolean AI;

//scoring
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;

color turquoise = #1FF0BD;
color red = #D8111F;
color lightwood = #F7D455;
color lilac = #DF4BF0;
color darkpurple = #8E1175;
color murkygreen = #2FBC56;
color darkgreen = #359357;
color tan = #CEC025;
color seablue = #1664B4;
color black = #000000;
color white = #ffffff;

//SOUND VARIABLES
Minim minim;
AudioPlayer scoring, intro, gameover, bouncing; 

PImage trophy;

void setup() {
  size(800, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  
  //initialize paddlers
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initialize ball
  ballx = width/2;
  bally = height/2; 
  balld = 100;
  vx = random(-3, 3);
  vy = random(-3, 3);
  
  //initialize keyboard vars
  wkey = skey = upkey = downkey = false;
  
  //initialize score
  leftscore = rightscore = 0;
  timer = 100;
  
  //minim 
  minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  gameover = minim.loadFile("gameover.wav");
  bouncing = minim.loadFile("bouncing.wav");
  scoring = minim.loadFile("scoring.wav");
  
  trophy = loadImage("trophy.png");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
   println("Mode error: " + mode);
  }
}
