import 'dart:io';

int getIntInput(String message) {
  while (true) {
    stdout.write('$message ');
    String? input = stdin.readLineSync();
    int? number = int.tryParse(input!);
    if (number != null) return number;
    print('Please enter only numbers');

  }
}

int getPositiveIntInput(String message) {
  while (true) {
    stdout.write(message);
    String? input = stdin.readLineSync();
    int? number = int.tryParse(input ?? '');
    if (number != null && number >= 0) return number;
    print('Please enter a valid number (0 or more).');
  }
}
String getEvaluation(double percentage) {
  if (percentage < 50) return 'Fail';
  if (percentage < 66) return 'Pass';
  if (percentage < 86) return 'Good';
  return 'Excellent';
}

String getStringInput(String message) {
  while (true) {
    stdout.write(message);
    String? input = stdin.readLineSync();
    if (input == null || input.trim().isEmpty) {
      print('Input cannot be empty. Try again.');
      continue;
    }
    if (int.tryParse(input) == null) {
      return input;
    } else {
      print('Please enter a valid text (not a number).');
    }
  }
}