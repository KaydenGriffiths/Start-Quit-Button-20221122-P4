//Globabl Variables
Boolean startOS=false, StartPlaying=false, text=false;
String exitText = "Exit";
int appWidth, appHeight;
int fontSize;
float quitX, quitY, quitWidth, quitHeight, textX, textY, textWidth, textHeight;
color quitButtonColor, yellow=#FFFF00, purple=#9600FF, white=#FFFFFF;
PFont textFont;
//
void setup() {
  //Size Time
  frameRate(9000);
  size( 800, 600 );
  //
  displayOrientation();
  appWidth=width;
  appHeight=height;
  //
  population();
} //End setup
//
void draw() 
{
  if ( StartPlaying==true ) { //Actual start IF
  programDraw();
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
  if ( keyCode == ESC ||  key=='L' || key=='l') {
    exit(); 
    println("bye!");
  }
  //Colored Background time!!!!! 

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
