void intro(){
  background(sky);
  
 //title text
  fill(frost);
  textFont(Lequire);
  textSize(150);
  text("breakout!",width/2,200);
}

void introClicks(){
   if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height){
    mode = game;
  }
}
