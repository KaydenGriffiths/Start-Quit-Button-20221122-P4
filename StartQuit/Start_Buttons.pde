void OS_Start() {
  //OS Level Start Button
  startOS = true;
  if ( startOS==true && StartPlaying==false ) println("To Start, Press the Space Bar");
}//End OS_Start
//
void quitButtonMousePressed () {
  if ( StartPlaying==true && mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
    exit(); 
    println("bye!");
  }
}//quitButtonMousePressed
