class Star //note that this class does NOT extend Floater
{

  private int x, y, mySize;

  public Star() {

    x = (int)(Math.random()*canvas);

    y = (int)(Math.random()*canvas);

    mySize = (int)(Math.random()*5) + 1;
  } //end of constructor


  public void show() {

    fill(255);
    ellipse(x, y, mySize, mySize);
    
  }
}
