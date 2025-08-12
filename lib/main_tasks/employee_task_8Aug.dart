import 'dart:io';
import '../oop/employee.dart';

void employeesTask() {
  print('Enter Employees count  :');
  int empCounter = int.parse(stdin.readLineSync()!);
  List<Employee> empList = [];
  for (int i = 0; i < empCounter; i++) {
    Employee emp = Employee(0, '', 0, []);
    emp.getEmployeeDetails();
    empList.add(emp);
  }
  for (int i = 0; i < empList.length; i++) {
    empList[i].displayEmployeeDetails();
    empList[i].calculateSalary();
  }
  Employee.displaySalaryCalculations();
}
