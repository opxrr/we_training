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

void getList(List<int> lis) {
  int count = getPositiveIntInput('how many elements will be added ?');
  for (int i = 0; i < count; i++) {
    print('Enter the element number ${i + 1}');
    lis.add(int.parse(stdin.readLineSync()!));
  }
}

void showList(List<int> lis) {
  print('List content : \n $lis');
}

int sumList(List<int> lis) {
  int sum = 0;
  lis.forEach((e) {
    sum += e;
  });
  return sum;
}

double avgList(List<int> lis) {
  double avg = sumList(lis) / lis.length;
  return avg;
}

Map<String, dynamic> maxAndMin(List<int> lis) {
  int max = 0, min = lis.first;
  Map<String, dynamic> maxMap = {};
  lis.forEach((e) {
    if (e > max) {
      max = e;
      maxMap.addAll({'max': e});
    }
  });
  lis.forEach((e) {
    if (e < min) {
      min = e;
      maxMap.addAll({'min': e});
    }
  });

  maxMap.addAll({'max': max});
  maxMap.addAll({'min': min});
  return maxMap;
}
