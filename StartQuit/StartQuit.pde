//Globabl Variables
Boolean startOS=false, StartPlaying=false;
int appWidth, appHeight;
float quitX, quitY, quitWidth, quitHeight;
color quitButtonColor, yellow=#FFFF00 , purple=#9600FF;
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
    //
    //Logical Rectangle
    //println("X-Value", quitX, mouseX, quitX+quitWidth);
    //println("Y-Value", quitY, mouseY, quitY+quitHeight);
    //
    //Quit Button Hover Over Feature
    if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {
      quitButtonColor = yellow; //Remember Knight Mode
    } else {
      quitButtonColor = purple; //Remember Day Mode
    } //End Hover Over
    //
    fill( quitButtonColor ); 
    rect( quitX, quitY, quitWidth, quitHeight ); //Quit Button
  }
} //End draw
//
void keyPressed() 
{
  //
  if ( key==' ' && startOS==true ) { 
    StartPlaying = true; 
    println("Welcome to the Game!!!");
  }
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
  if ( startOS==true && StartPlaying==false ) println("To Start, Press the Space Bar");
  //
  //Quit Button: Logical Rectangle see println in draw()
    if ( StartPlaying==true && mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) { // if ( StartPlaying==true && then the rest of the code works just aswell
      exit(); 
      println("bye!");
    }
  }
//End mousePressed
//
//End Main Program
