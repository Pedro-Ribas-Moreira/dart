import 'dart:io';

void main() {
  print("What is the Ultimate Question of Life, the Universe, and Everything?");
  String? input = stdin.readLineSync();
  var answer = int.tryParse("$input");
  if (answer != null) {
    if (answer != 42) {
      print('$answer is not the answer!');
    } else {
      print('$answer is the answer to all!');
    }
  } else {
    print("$input is not a valid answer...");
  }
}
