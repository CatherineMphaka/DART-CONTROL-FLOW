/*a Dart program that prompts the user for a number and then
prints a message to the console*/
import 'dart:io';

void main() {
  int? number;

  while (number == null) {
    stdout.write('Enter an integer number: ');
    String? input = stdin.readLineSync();

    try {
      // Attempt to parse the input string to an integer
      number = int.parse(input!);
    } catch (FormatException) {
      // If parsing fails, print an error message and continue the loop
      print('Please enter a valid integer number.');
    }
  }

  // Check the number and print the appropriate message
  if (number > 10) {
    print('Your number is greater than 10');
  } else if (number < 10) {
    print('Your number is less than 10');
  } else {
    print('Your number is equal to 10');
  }
}


