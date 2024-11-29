//your variable declarations here
Spaceship test = new Spaceship();
Star[] nightSky = new Star[250]; //creating the array of stars
private int canvas = 1000;
private boolean acceleration, deceleration, leftRotation, rightRotation, hyperspace;


public void setup() 
{
  size(1000, 1000);

  for (int i = 0; i < 250; i++) {

    nightSky[i] = new Star();
  }
}// end of setup

public void draw() 
{
  background(0);

  for (int i = 0; i < 250; i ++) {

    nightSky[i].show();
  }

  test.move();
  test.show();
  
  if(acceleration == true){
  
    test.accelerate(0.5);
  
  }
  
  if(deceleration == true){
  
  test.accelerate(-0.5);

  }

  if(rightRotation == true){
  
  test.turn(2);

  }
  
  if(leftRotation == true){
  
  test.turn(-2);

  }
  
  if(hyperspace == true){
  
  test.hyperspace();

  }
   
  
}// end of draw


public void keyPressed() {

  if (key == 'w') { //up

    acceleration = true;    
    
  } else if (key == 's') { //down

    deceleration = true;
    
  } else if (key == 'a') { //left rotation

    leftRotation = true;
    
  } else if (key == 'd') { //right rotation

    rightRotation = true;
    
  } else if (key == 'h') { //hyperspace

    hyperspace = true;    
  }   
  
} //end of keyPressed


public void keyReleased() {

  if (key == 'w') { //up

    acceleration = false;    
    
  } else if (key == 's') { //down

    deceleration = false;
    
  } else if (key == 'a') { //left rotation

    leftRotation = false;
    
  } else if (key == 'd') { //right rotation

    rightRotation = false;
    
  } else if (key == 'h') { //hyperspace

    hyperspace = false;    
  }   
  
} //end of keyReleased

