void gameover(){
  background(sky);
}



void gameoverClicks(){ 
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height){
    mode = intro;
  }
}
