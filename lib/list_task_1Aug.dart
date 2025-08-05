import 'dart:io';

import 'custom_functions.dart';

/*1-add value
* 2-remove (index/value)
* 3-update
* 4-show value
* 5-search value(t/f/index)*/

void listTask() {
  List<int> myList = [];
  while (true) {
    int choice = getPositiveIntInput(
      '----------MENU----------\n'
          '1- Add value\n'
          '2- Remove\n'
          '3- Update\n'
          '4- Show Values\n'
          '5- Search\n'
          '6- Exit\n'
          'Pick an option : ',
    );
    switch (choice) {
      case 1:
        int value = getIntInput('Enter a value (Number) to add to the list : ');
        myList.add(value);
        print('Value added successfully!');

        break;
      case 2:
        if (myList.isNotEmpty) {
          int inChoice = getIntInput(
            '1- Remove by value\n'
                '2- Remove by index ',
          );
          if (inChoice == 1) {
            int r = getIntInput('Enter a value to remove : ');
            myList.contains(r)
                ? myList.remove(r)
                : print("Value doesn't exist ");
          } else if (inChoice == 2) {
            int r = getPositiveIntInput(
              'Enter an index to remove at (from 0 to ${myList.length - 1}): ',
            );
            (r >= 0 && r < myList.length)
                ? myList.removeAt(r)
                : print('Invalid index');
          }
        } else {
          print('List is empty .');
        }

        break;
      case 3:
        if (myList.isNotEmpty) {
          int oldValue = getIntInput('Enter the old value: ');
          int index = myList.indexOf(oldValue);
          if (index != -1) {
            int newValue = getIntInput('Enter the new value: ');
            myList[index] = newValue;
            print('Value updated.');
          } else {
            print('Value not exist.');
          }
        } else {
          print('List is empty .');
        }

        break;

      case 4:
        myList.isEmpty
            ? print('List is empty.')
            : print(
          '---------------------\n'
              '${myList.join(',')}',
        );
        break;
      case 5:
        if (myList.isNotEmpty) {
          int sV = getIntInput('Enter a value to search : ');
          myList.contains(sV)
              ? print('$sV is exist at index ${myList.indexOf(sV)} ')
              : print('Value not found');
        } else {
          print('List is empty .');
        }
        break;
      case 6:
        print('Exiting program...');
        exit(0);
      default:
        print('Invalid input');
    }
  }
}