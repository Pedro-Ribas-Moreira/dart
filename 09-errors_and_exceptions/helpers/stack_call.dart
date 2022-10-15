void stackStart() {
  int i = 0;
  print("Started Main");
  functionOne();
  print("Finished Main");
}

functionOne() {
  int j = 25;
  print("Started F01");
  try {
    functionTwo(j);
  } on FormatException catch (e) {
    print(e.toString());
    // print(e.offset);
    // print(e.message);
  } on Exception catch (e) {
    // print(e.toString());
  } finally {
    print("end.");
  }
  print("Finished F01");
}

functionTwo(int otherJ) {
  double k = 0.9;
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not a number");
  }
  otherJ = 50;
  print("Finished F02");
}
