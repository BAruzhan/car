// Example: Two Car objects
Car myCar1;
Car myCar2; 
Car myCar3;
Car myCar4;// Two objects!
 
void setup() {
  size(400,206);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),400,140,-2); 
  myCar2 = new Car(color(0,0,255),0,30,1);
  myCar3 = new Car(color(0,255,0),0,70,3);
  myCar4 = new Car(color(255,255,0),400,170,-4);
}
 
void draw() {
  background(170,167,167);
  myCar1.driveN();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
  myCar3.drive();
  myCar3.display();
  myCar4.driveN();
  myCar4.display();
  
  strokeWeight(8);
  stroke(255);
  line(0,6,400,6);
  line(0,200,400,200);
  line(0,100,400,100);
  line(0,110,400,110);
}
 
// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
 
  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
 
  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }
 
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
  
  void driveN() {
    xpos = xpos + xspeed;
    if (xpos < 0) {
      xpos = 400;
    }
  }
}