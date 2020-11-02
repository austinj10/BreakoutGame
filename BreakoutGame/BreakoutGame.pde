//Austin Jeon
//Oct 28,2020
//Block 1-1B

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framework
int mode;
final int intro    = 0;
final int game     = 1;
final int pause    = 2;
final int gameover = 3;

//sound variables
Minim minim;
AudioPlayer introgametheme, gameovertheme, bouncetheme;

//paddle & ball (entity) variables
float ballx, bally, balld;//ball
float paddlex, paddley, paddled;//paddle

//keyboard variables
boolean akey,dkey;

//moving
float vballx,vbally;

//text
PFont Lequire;

//colours (https://www.colourlovers.com/palette/490780/The_First_Raindrop)
color frost  = #E8F3F8;
color rain   = #DBE6EC;
color shroud = #C2CBCE;
color border = #A4BCC2;
color sky    = #81A8B8;

//lives and timer
int lives;
int timer;

void setup(){
  size(1200,800,P2D);
  mode = intro;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 40;
  vballx = 0;
  vbally = 5;
  
  //initialize paddles (maybe move the circles left or right to make it quarter of a circle)
  paddlex = width/2;
  paddley = height+25;
  paddled = 200;
  
  //initialize lives and timer
  lives = 5;
  timer = 100;
   
  //initialize keyboard variables
  akey = dkey = false;
  
  //text
  textAlign(CENTER,CENTER);
  Lequire = createFont("Lequire.otf",200);
  
  //Minim
}

void draw(){
  if (mode == intro){
    intro();
  } else if (mode == game){
    game();
  } else if (mode == pause){
    pause();
  } else if (mode == gameover){
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
