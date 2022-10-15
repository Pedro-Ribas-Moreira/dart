import 'dart:io';

void main() {
  print("What is your name?");
  String? nameInput = stdin.readLineSync();
  print("What is the Ultimate Question of Life, the Universe, and Everything?");
  String? input = stdin.readLineSync();

  String marvinQuote = "think you ought to know I'm feeling very depressed.";
  var answer = int.tryParse("$input");
  if (answer != null) {
    showMessage(nameInput.toString(), answer, msg: marvinQuote);
  } else {
    print("$input is not a valid answer...");
  }
}

//required positions
showMessage(String name, int num, {String? msg}) {
  if (num < 42) {
    print("no $name, $num its too low");
  } else if (num == 42) {
    print("yes $name! $num is the right answer!");
  } else {
    print("wow $name, guessed too high! it's definitely not $num");
  }
  print('$msg -Marvin');
}


//optional 
