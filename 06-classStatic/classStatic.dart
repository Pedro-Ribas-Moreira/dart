import 'dart:mirrors';

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

void main() {
  double myPi = MathCircle.pi;
  print(myPi);
  MathCircle newCircle = MathCircle(3);
  double newCircleArea = newCircle.circleArea();
  print(newCircleArea);

  newCircleArea = MathCircle.staticCircleArea(10);
  print(newCircleArea);
}
