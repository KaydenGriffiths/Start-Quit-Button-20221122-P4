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
  quitX=appWidth*1/4;
  quitY=appHeight*1/4;
  quitWidth=appWidth*1/2;
  quitHeight=appHeight*1/2;
  //
} //End setup
//
void draw() 
{
  if ( StartPlaying==true ) { //Actual start IF
    background(0); //Night Mode not considered yet
    rect( quitX, quitY, quitWidth, quitHeight ); //Quit Button
  }
  //
} //End draw
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
} //End mousePressed
//
//End Main Program
