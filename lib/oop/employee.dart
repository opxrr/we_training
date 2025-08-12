import 'dart:io';

import 'package:we_tasks/custom_functions/custom_functions.dart';

class Employee {
  int empCode;
  String name;
  double salary;
  List<String> departs;
  static double maxSalary = 0,
      minSalary = double.infinity,
      avgSalary = 0,
      totalSalary = 0;
  static int count = 0;

  Employee(this.empCode, this.name, this.salary, this.departs) {
    count++;
  }

  void getEmployeeDetails() {
    empCode = getIntInput("Enter Employee number $count's Code:");
    name = getStringInput("Enter Employee Name:");
    print("Enter Employee Salary:");
    salary = double.parse(stdin.readLineSync()!);
    departs =
        getStringInput(
          "Enter Employee Departments (separated by ','):",
        ).split(',').map((e) => e.trim()).toList();
  }

  void displayEmployeeDetails() {
    print("======================================");
    print("           Employee Details           ");
    print("======================================");
    print("Name        : $name");
    print("Code        : $empCode");
    print("Salary      : \$${salary.toStringAsFixed(2)}");
    print("Departments :");
    for (int i = 0; i < departs.length; i++) {
      print("   ${i + 1}. ${departs[i]}");
    }
    print("======================================");
  }

  void calculateSalary() {
    maxSalary < salary ? maxSalary = salary : maxSalary = maxSalary;
    minSalary > salary ? minSalary = salary : minSalary = minSalary;
    totalSalary += salary;
    avgSalary = totalSalary / count;
  }

  static void displaySalaryCalculations() {
    print("======================================");
    print("Maximum Salary : ${maxSalary.toStringAsFixed(2)}\$");
    print("Minimum Salary : ${minSalary.toStringAsFixed(2)}\$");
    print("Average Salary : ${avgSalary.toStringAsFixed(2)}\$");
    print("Total Salary   : ${totalSalary.toStringAsFixed(2)}\$");
    print("======================================");
  }
}
