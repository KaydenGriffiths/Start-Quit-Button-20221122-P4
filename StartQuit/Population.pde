void population() {
  float centerX = appWidth * 1/2;
  float centerY = appHeight * 1/2;
  quitX= centerX - ( appWidth *1/4 );
  quitY= centerY - ( appHeight * 1/4 );
  quitWidth= appWidth * 1/2; //Line not point, thus use formula
  quitHeight= appHeight * 1/2; //Line not point, thus use formula
  //
  textFont = createFont("Arial", 55);
  textWidth = appWidth*1/12;
  textHeight = appHeight*1/20;
}//End Population
