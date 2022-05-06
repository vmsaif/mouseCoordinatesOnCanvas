class MOUSESCALE 
{
  // mouse coordinates 
  int barSize = 10;
  int mouseBarSize = 20;
  int barDensity = 25;
  int xValue;
  int yValue;
  
  MOUSESCALE(){}
  
  void display(){
    xValue = mouseX;
    yValue = mouseY;
    drawBars();
    drawMouseBars();
    printCoordinates();
    printScaleValue();

  }
  
  
  
  void drawBars()
  {
    strokeWeight(6);
    line(0,0,0,height); //y line
    line(0,0,width,0);  // x line 
    strokeWeight(2);
    for(int i = 0; i < width && i < height; i = i + barDensity){
      if(i < width){
        line(i,0,i,barSize);
      }
      
      if(i < height)
      {
        line(0,i,barSize,i);
      }
    } 
  }
  
  void drawMouseBars()
  {
    line(mouseX,0,mouseX,mouseBarSize); //x bar
    line(0,mouseY,mouseBarSize,mouseY); //y bar
    
    line(mouseX-(mouseBarSize/2),mouseY,mouseX+(mouseBarSize/2),mouseY); //pointer bar x
    line(mouseX,mouseY-(mouseBarSize/2),mouseX,mouseY+(mouseBarSize/2)); //pointer bar y
    
  }
  
  void printCoordinates()
  {
    textSize(20);
    fill(0);
    text("(X: " + mouseX + ", Y:" + mouseY +" )", mouseX, mouseY+50);
  }
  
  void printScaleValue(){
    textSize(20);
    fill(0);
    
    text("X:"+xValue, mouseX-15, barDensity+15); //top scale value
    text("Y:"+yValue, barDensity+10, mouseY+5); //left scale value
  }
  
}//class
