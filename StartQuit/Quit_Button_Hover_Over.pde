void quitButtonHoverOver () {
    if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
      quitButtonColor = yellow; //Remember Knight Mode
      text=true;
    } else {
      quitButtonColor = purple; //Remember Day Mode
      text=false;
    } //End Hover Over
}//End quitButtonHoverOver
