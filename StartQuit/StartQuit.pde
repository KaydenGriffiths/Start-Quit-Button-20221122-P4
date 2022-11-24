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
  //
  //size time
  frameRate(900);
  size( 800, 600 );
  println("Display Width:", width, "\tDisplay Height:", height );
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
  //
  textFont = createFont("Arial", 55);
  textWidth = appWidth*1/12;
  textHeight = appHeight*1/20;
  //
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
      text=true;
    } else {
      quitButtonColor = purple; //Remember Day Mode
      text=false;
    } //End Hover Over
    // 
    fill( quitButtonColor ); 
    rect( quitX, quitY, quitWidth, quitHeight ); //Quit Button
    //
    if (text=true && mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {         
      fill(0,0,0);
      rect(mouseX, mouseY, textWidth, textHeight);
    }
    if (text=true && mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<quitY+quitHeight ) {         
      fill(white);
      fontSize=25;
      textFont(textFont ,fontSize);
      text( exitText, mouseX*1.03, mouseY*1.01, textWidth*2, textHeight*2);
    }
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
