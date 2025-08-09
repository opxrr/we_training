import 'dart:io';
import 'package:we_tasks/Car.dart';
import 'package:we_tasks/func_task_8Aug.dart';
import 'package:we_tasks/switch_task_29Jul.dart';
import 'custom_functions.dart';
import 'list_and_map_5Aug.dart';
import 'list_task_1Aug.dart';

void main() {
  //  Car car1 = Car();
  //  Car car2 = Car();
  //  print('Enter the car price :');
  //  car2.price=double.parse(stdin.readLineSync()!);
  //  print('Enter the car code :');
  //  car2.code=stdin.readLineSync()!;
  //  print('Enter the car country :');
  //  car2.country=stdin.readLineSync()!;
  //  print('Enter the car color :');
  //  car2.color=stdin.readLineSync()!;
  // car1.printCar();
  // car2.printCar();
  while (true) {
    int choice = getPositiveIntInput(
      '----Task Menu----\n'
      '1- Switch Task\n'
      '2- List Task\n'
      '3- List And Map\n'
      '4- Function Task\n'
      '0- Exit\n'
      'Pick a task to test:',
    );

    switch (choice) {
      case 1:
        switchTask();
        break;
      case 2:
        listTask();
        break;
      case 3:
        listAndMap();
        break;
      case 4:
        funcTask();
        break;
      case 0:
        print('Exiting program...');
        exit(0);
      default:
        print('Invalid input');
    }
  }
}
