import 'package:we_tasks/custom_functions.dart';

void funcTask() {
  List<int> myList = [];
  getList(myList);
  showList(myList);
  print('Sum of List = ${sumList(myList)}');
  print('Average of list = ${avgList(myList)}');
  print(maxAndMin(myList));
}
