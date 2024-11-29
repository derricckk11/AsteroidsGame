class Spaceship extends Floater  
{   
  public Spaceship() { //constructor

    myCenterX = (int)(Math.random()* 1000);
    myCenterY = (int)(Math.random()* 1000);
    myXspeed = 0;
    myYspeed = 0; 
    myColor = #343d46;
    myPointDirection = 0;
    corners = 15; // 21- the number of corners in my spaceship
    xCorners = new int[corners];
    yCorners = new int[corners]; //defining the length of these arrays

// my design coordinates starts here
    xCorners = new int []{16, -8, -8, -2, -2, -16, -2, -2, -16, -2, 8, -2, -2, 8, -2};

    yCorners = new int []{0, -8, 8, -2, -10, - 10, 1, 10, 10, -6, -6, -8, 6, 6, 8};
    
    //maybe redo the points from 4 - 9

  } //end of constructor

  public void hyperspace(){
  
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*1001);
    myCenterY = (int)(Math.random()*1001);
    myPointDirection = (Math.random()*360);
  
  }
} 



