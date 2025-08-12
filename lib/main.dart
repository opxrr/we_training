import 'dart:io';
import 'package:we_tasks/main_tasks/func_task_8Aug.dart';
import 'package:we_tasks/main_tasks/switch_task_29Jul.dart';
import 'custom_functions/custom_functions.dart';
import 'main_tasks/employee_task_8Aug.dart';
import 'main_tasks/list_and_map_5Aug.dart';
import 'main_tasks/list_task_1Aug.dart';
import 'oop/oop_task_12Aug/mainTesting.dart';

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
      '----------Tasks Menu---------\n'
      '1- Switch Task       (29-Jul)\n'
      '2- List Task         (1-Aug)\n'
      '3- List And Map Task (5-Aug)\n'
      '4- Function Task     (8-Aug)\n'
      '5- Employees Task    (8-Aug)\n'
      '6- OOP Task          (12-Aug)\n'
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
      case 5:
        employeesTask();
        break;
       case 6:
         task12Aug();
         break;
      case 0:
        print('Exiting program...');
        exit(0);
      default:
        print('Invalid input');
    }
  }
}
