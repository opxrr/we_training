import 'dart:io';


import 'package:we_tasks/switch_task_29Jul.dart';

import 'custom_functions.dart';
import 'list_and_map_5Aug.dart';
import 'list_task_1Aug.dart';

void main() {
  while (true) {
    int choice = getPositiveIntInput(
      '----Task Menu----\n'
          '1- Switch Task\n'
          '2- List Task\n'
          '3- List And Map\n'
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
      case 0:
        print('Exiting program...');
        exit(0);
      default:
        print('Invalid input');
    }
  }
}