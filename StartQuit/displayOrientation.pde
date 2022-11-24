void displayOrientation() {
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "height:"+displayHeight);
  //
  String ls="landscapes or Square", p="potrait", DO="Display Orientation", instruct ="Breh, turn your phon";
  //
  if ( appWidth >= appHeight ) { //Declaring Landscape & Square 
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) {
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }//End displayOrientation
}
