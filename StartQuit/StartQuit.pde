//Globabl Variables
Boolean startOS=false, StartPlaying=false;
//
void setup() {
  size( 800, 600 );
} //End setup
//
void draw() 
{
  if ( StartPlaying==true ) background(0); //Night Mode not considered yet
} //End draw
//
void keyPressed() 
{
  //
  if ( key==' ' && startOS==true) StartPlaying = true;
} //End keypressed
//
void mousePressed() 
{
  //
  //OS Level Start Button
  startOS = true;
} //End mousePressed
//
//End Main Program
