void exitTextBox () {
  if (text=true && mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {         
      fill(0,0,0);
      rect(mouseX, mouseY, textWidth, textHeight);
    }
    if (text=true && mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {         
      fill(white);
      fontSize=25;
      textFont(textFont ,fontSize);
      text( exitText, mouseX*103/100, mouseY*101/100, textWidth*2, textHeight*2);
    }
}//End exitTextBox
