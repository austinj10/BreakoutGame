void game(){
  background(sky);
  
  //text lives
  fill(frost);
  textFont(Lequire);
  textSize(75);
  text(lives, width/2,75);
   
  //lives and restart
  if (bally > height+25){
    lives--;
    ballx = width/2;
    bally = height/2;
    vballx = 0;
    vbally = 5;
    timer = 100;
  }
  if (lives == 0){
    mode = gameover;
  }
 
  //timer 
  timer = timer - 1;
  
  //paddle
  strokeWeight(0);
  fill(frost);
  circle(paddlex,paddley,paddled);
  
  //move paddle
   if (akey == true) paddlex = paddlex - 8;
    if (paddlex < 100) akey = false;
  if (dkey == true) paddlex = paddlex + 8;
    if (paddlex > width-100) dkey = false;
    
  //bounce paddles
  if (dist(paddlex,paddley,ballx,bally) <= paddled/2 + balld/2){
    vballx = (ballx - paddlex)/12;
    vbally = (bally - paddley)/12;
  }
    
  //ball 
  fill(shroud);
  circle(ballx,bally,balld);
  
  //ball moving
  if (timer < 0){
    ballx = ballx + vballx;
    bally = bally + vbally;
  }
  
  //bounce walls
  if (bally < 25){
    vbally = vbally * -1;
  } else if (ballx < 25 || ballx > width-25){
    vballx = vballx * -1;
  }
  
}



void gameClicks(){
   if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height){
    mode = pause;
  }
}
