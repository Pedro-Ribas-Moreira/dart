void main() {
  //accessing the class static const to get the value of pi
  double myPi = MathCircle.pi;
  print(myPi);

  //create a new instance
  MathCircle newCircle = MathCircle(3);

  //using the instance method to calculate the area
  double newCircleArea = newCircle.circleArea();
  print(newCircleArea);

  //using the class static method to calculate the area
  newCircleArea = MathCircle.staticCircleArea(10);
  print(newCircleArea);
}

class MathCircle {
  static const double pi = 3.1415;
  double myRadius;

  MathCircle(this.myRadius);

  double circleArea() {
    return pi * (myRadius * myRadius);
  }

  static double staticCircleArea(double radius) {
    return pi * (radius * radius);
  }
}
