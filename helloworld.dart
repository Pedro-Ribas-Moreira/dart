// Define a function.
import 'dart:ffi';

void printString(String stg) {
  print('Hello $stg.'); // Print to console.
}

void printInteger(int num) {
  print('This is a int: $num.'); // Print to console.
}

void printDouble(double dbl) {
  print('This is a Double: $dbl.'); // Print to console.
}

void printBoolean(bool bol) {
  print('This is a Boolean: $bol.'); // Print to console.
}

// This is where the app starts executing.
void main() {
  printString("World!"); // Call a function.

  printInteger(13); // Call a function.

  printDouble(12.55); // Call a function.

  printBoolean(true); // Call a function.
}
