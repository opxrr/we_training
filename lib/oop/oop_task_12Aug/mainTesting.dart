
import 'package:we_tasks/oop/oop_task_12Aug/point2D.dart';
import 'package:we_tasks/oop/oop_task_12Aug/point3D.dart';

void task12Aug() {
  Point2D p2 = Point2D(2, 3);
  print("Point2D: ${p2.toString()}");

  print("Get X: ${p2.getX()}");
  print("Get Y: ${p2.getY()}");
  print("Get XY: ${p2.getXY()}");

  p2.setX(10);
  p2.setY(20);
  print("After setX & setY: ${p2.toString()}");

  p2.setXY(5, 6);
  print("After setXY: ${p2.toString()}");

  Point3D p3 = Point3D(1, 2, 3);
  print("Point3D: ${p3.toString()}");


  print("Get X: ${p3.getX()}");
  print("Get Y: ${p3.getY()}");
  print("Get Z: ${p3.getZ()}");
  print("Get XYZ: ${p3.getXYZ()}");

  p3.setX(11);
  p3.setY(22);
  p3.setZ(33);
  print("After setX, setY & setZ: ${p3.toString()}");

  p3.setXYZ(7, 8, 9);
  print("After setXYZ: ${p3.toString()}");
}
