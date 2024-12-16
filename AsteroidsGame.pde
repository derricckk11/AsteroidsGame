//your variable declarations here
Spaceship test = new Spaceship();
Star[] nightSky = new Star[250]; //creating the array of stars
ArrayList <Asteroid> bob = new ArrayList <Asteroid>();
ArrayList <Bullets> jim = new ArrayList <Bullets>();

private int canvas = 800;
private boolean acceleration, deceleration, leftRotation, rightRotation, hyperspace;

public void setup() 
{
  size(800, 800);

  for (int i = 0; i < 150; i++) {

    nightSky[i] = new Star();
  }

  for (int i = 0; i < 70; i++) {

    bob.add(new Asteroid());
  }
}// end of setup

public void draw() 
{
  background(29, 41, 81);

  for (int i = 0; i < jim.size(); i++) {

    jim.get(i).show();
    jim.get(i).move();

    if (jim.size() > 0) {
      jim.get(i).collision();
    }
  }


  for (int i = 0; i < 150; i ++) { //creating the stars

    nightSky[i].show();
  }

  for (int i = 0; i < bob.size(); i++) {

    bob.get(i).show();
    bob.get(i).move();
    bob.get(i).collision();
  }


  test.move();
  test.show();

  if (acceleration == true) {

    test.accelerate(0.5);
  }

  if (deceleration == true) {

    test.accelerate(-0.5);
  }

  if (rightRotation == true) {

    test.turn(2);
  }

  if (leftRotation == true) {

    test.turn(-2);
  }

  if (hyperspace == true) {

    test.hyperspace();
  }

  for (int i = 0; i < bob.size(); i++) {  //collision

    float d = dist((float)(test.getCenterX()), (float) (test.getCenterY()), (float) (bob.get(i).getCenterX()), (float) (bob.get(i).getCenterY()));

    if (d < 10) {

      bob.remove(i);
    } //end of the collision for loop and if statement
  }

  //jim.get(0).show();

  //  if (mousePressed == true) {

  //    for (int i = 0; i < jim.size(); i++) {

  //      jim.get(0).move(jim);
  //    }
  //  }
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

public void mousePressed() {

  if (mousePressed == true) {

    jim.add(new Bullets(test));


    for (int i = 0; i < jim.size(); i++) {

      jim.get(i).accelerate(6.0);
    } //end of for loop
  } //end of if statement
} //end of mousePressed
