class Bullets extends Floater {

  private double accelerationSpeed; 

  public Bullets(Spaceship test) {

    myCenterX = test.getCenterX();
    myCenterY = test.getCenterY();
    myXspeed = test.getMyXSpeed();
    myYspeed = test.getMyYSpeed();
    myPointDirection = test.getPointDirection();
    accelerationSpeed = 6.0;
  } //end of the bullets constructor

  public double getCenterX() {

    return myCenterX;
  }

  public double getCenterY() {

    return myCenterY;
  }


  public void show() {

    fill(0); //fill with a bronze color
    ellipse((float) myCenterX, (float) myCenterY, 5, 5);
  } //end of show

  public void collision() {

    for (int z = 0; z < jim.size(); z++) {
      
      Bullets b =  jim.get(z); //get the current bullet

      if (bob.size() > 0) {

        for (int i = 0; i < bob.size() - 1; i++) {  //collision
          
          Asteroid a = bob.get(i); //get the current asteroid
          
          float d = dist((float)(b.getCenterX()), (float)(b.getCenterY()), (float)(a.getCenterX()), (float) (a.getCenterY())); //dist from bullet to the asteroid

          if (d < 15) {

            bob.remove(a);
            jim.remove(b);
            i--;
            //System.out.println(bob.size());
          } //end of the collision if statement
        } //end of the collision for loop
      }// //end of the if statement for if the collision function will run
    }
  }//end of the collision function
} //end of the bullets class
