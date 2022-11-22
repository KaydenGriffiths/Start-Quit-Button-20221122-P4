//Globabl Variables
Boolean startOS=false, StartPlaying=false;
int appWidth, appHeight;
int quitX, quitY, quitWidth, quitHeight;
//
void setup() {
  appWidth=width;
  appHeight=height;
  //Population
  quitX=width*1/4;
  quitY=height*1/4;
  quitWidth=width*1/2;
  quitHeight=height*1/2;
  //
  frameRate(45);
  size( 800, 600 );
} //End setup
//
void draw() 
{
  if ( StartPlaying==true ) { //Actual start IF
    background(0); //Night Mode not considered yet
    rect( quitX, quitY, 400, 300 ); //Quit Button
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
