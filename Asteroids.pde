class Asteroid extends Floater {

  private double rotateSpeed;

  public Asteroid() {

    corners = 6;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];   
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};   
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};  
    myColor = #1B0000; //165, 150, 146;   

    //protected double myCenterX, myCenterY; //holds center coordinates   
    myCenterX = (int)(Math.random()*1001);
    myCenterY = (int)(Math.random()*1001);
    myXspeed = (int)(Math.random()* 6 - 3);
    myYspeed = (int)(Math.random()* 6 - 3);
    myPointDirection = 0;     
    rotateSpeed = (Math.random()*11 - 5); // -5, -4, -3, -2, - 1, 0, 1, 2, 3, 4, 5
  } //end of asteroid constructor



  public void move() {

    turn(rotateSpeed);
    super.move();
  }

  public double getCenterX() {

    return myCenterX;
  }

  public double getCenterY() {

    return myCenterY;
  }

  public void collision() {

    for (int i = 0; i < bob.size(); i++) {  //collision

      float d = dist((float) (test.getX()), (float) (test.getY()), (float)(bob.get(i).getCenterX()), (float) (bob.get(i).getCenterY()));

      if (d < 15) {

        bob.remove(i);
        i--;
        System.out.println(bob.size());
      } //end of the collision for loop and if statement
    }
  }
}
