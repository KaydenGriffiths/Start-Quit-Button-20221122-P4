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
  population();
} //End setup
//
void draw() 
{ 
  //debugLogicalRect();
  //
  if ( StartPlaying==true ) { //Actual start IF
    programDraw();
  }
} //End draw
//
void keyPressed() 
{
  //User Intiated Start Screen
  if ( key==' ' && startOS==true ) { 
    StartPlaying = true; 
    println("Welcome to the Game!!!");
  }
  //
  KeyBoardShortCuts();
} //End keypressed
//
void mousePressed() 
{
  OS_Start();
  quitButtonMousePressed();
}
//End mousePressed
//
//End Main Program
