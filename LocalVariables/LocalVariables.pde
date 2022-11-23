//Globabl Variables
Boolean startOS=false, StartPlaying=false;
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
//
void setup() {
  //
  //size time
  frameRate(45);
  size( 800, 600 );
  //
  appWidth=width;
  appHeight=height;
  //
  //Population
  float centerX = appWidth * 1/2;
  float centerY = appHeight * 1/2;
  quitX= centerX - ( appWidth *1/4 );
  quitY= centerY - ( appHeight * 1/4 );
  quitWidth= appWidth * 1/2; //Line not point, thus use formula
  quitHeight= appHeight * 1/2; //Line not point, thus use formula
} //End setup
//
void draw() 
{
  if ( StartPlaying==true ) { //Actual start IF
    background(0); //Night Mode not considered yet
    rect( quitX, quitY, quitWidth, quitHeight ); //Quit Button
  }
} //End draw`
//
void keyPressed() 
{
  //
  if ( key==' ' && startOS==true) StartPlaying = true;
  //
  //Prototype Key Board Quit Button OR shortcut
  if ( key=='L' || key=='l' ) exit();
  if ( keyCode == ESC ) {
    exit(); 
    println("bye!");
  }
} //End keypressed
//
void mousePressed() 
{
  //
  //OS Level Start Button
  startOS = true;
  if ( startOS==true ) println("To Start, Press the Space Bar");
  //
  //Quit Button: Logical Rectangle see println in draw()
  if ( ) {exit(); println("bye!");} 
  //
} //End mousePressed
//
//End Main Program
