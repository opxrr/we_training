import 'dart:io';
import 'custom_functions.dart';

void listAndMap() {
  List<Map<String, dynamic>> school = [];
  stdout.write('How many students will be added?');
  int studentCount=int.parse(stdin.readLineSync()!);
  while (true) {
    int choice = getPositiveIntInput(
      '\n---------- MENU ----------\n'
          '1 - Add Student\n'
          '2 - Remove Student\n'
          '3 - Show All Students\n'
          '4 - Show Student by ID\n'
          '0 - Exit\n'
          'Choose an option: ',
    );

    switch (choice) {
      case 1:
        if (school.length >= studentCount) {
          print('You have reached the maximum number of students ($studentCount).');
          break;
        }
        int id;
        do {
          id = getPositiveIntInput('Enter student ID: ');
          bool alreadyExist = school.any((student) => student['id'] == id);
          if (alreadyExist) {
            print('This ID already exists. Please enter a different ID.');
          } else {
            break;
          }
        } while (true);
        stdout.write('Enter student name: ');
        String? name = stdin.readLineSync();

        int subjectCount;
        do {
          subjectCount = getPositiveIntInput('How many subjects for $name: ');
          if (subjectCount < 3) {
            print('You must enter at least 3 subjects.');
          }
        } while (subjectCount < 3);

        Map<String, int> subjects = {};
        for (int i = 0; i < subjectCount; i++) {
          String subjectName;
          while (true) {
            stdout.write('Enter subject name ${i + 1}: ');
            subjectName = stdin.readLineSync()?.trim() ?? '';

            if (subjectName.isEmpty) {
              print('Subject name cannot be empty. Try again.');
            } else {
              break;
            }
          }

          int degree = getPositiveIntInput(
            'Enter degree for $subjectName (max 50): ',
          );

          if (degree > 50) {
            print('Max degree is 50. Setting it to 50.');
            degree = 50;
          }

          subjects[subjectName] = degree;
        }


        Map<String, dynamic> student = {
          'id': id,
          'name': name,
          'subjects': subjects,
        };
        school.add(student);
        print('Student added successfully.');
        break;

      case 2:
        int rId = getPositiveIntInput('Enter student ID to remove: ');
        int beforeCount = school.length;

        school.removeWhere((student) => student['id'] == rId);

        if (school.length < beforeCount) {
          print('Student removed.');
        } else {
          print('Student not found.');
        }
        break;

      case 3:
        if (school.isEmpty) {
          print('No students to display.');
        } else {
          for (var student in school) {
            print('\nID: ${student['id']}');
            print('Name: ${student['name']}');

            Map<String, int> subjects = student['subjects'];
            int total = subjects.values.reduce((a, b) => a + b);
            int fullMark = subjects.length * 50;
            double percentage = (total / fullMark) * 100;

            print('Subjects and Grades:');
            subjects.forEach((sub, deg) => print('  $sub: $deg'));

            print('Total: $total / $fullMark');
            print('Percentage: ${percentage.toStringAsFixed(2)}%');
            print('Evaluation: ${getEvaluation(percentage)}');
          }
        }
        break;

      case 4:
        int searchId = getPositiveIntInput('Enter student ID to search: ');
        var student = school.firstWhere(
              (st) => st['id'] == searchId,
          orElse: () => {},
        );

        if (student.isEmpty) {
          print('Student not found.');
        } else {
          print('\nID: ${student['id']}');
          print('Name: ${student['name']}');

          Map<String, int> subjects = student['subjects'];
          int total = subjects.values.reduce((a, b) => a + b);
          int fullMark = subjects.length * 50;
          double percentage = (total / fullMark) * 100;

          print('Subjects and Grades:');
          subjects.forEach((sub, deg) => print('  $sub: $deg'));

          print('Total: $total / $fullMark');
          print('Percentage: ${percentage.toStringAsFixed(2)}%');
          print('Evaluation: ${getEvaluation(percentage)}');
        }
        break;

      case 0:
        print('Exiting...');
        exit(0);

      default:
        print('Invalid option. Try again.');
    }
  }
}