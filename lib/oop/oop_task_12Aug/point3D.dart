
import 'package:we_tasks/oop/oop_task_12Aug/point2D.dart';

class Point3D extends Point2D {
  double _z = 0.0;

  Point3D(super.x, super.y, this._z);

  Point3D.defaultPoint() : super.defaultPoint();

  double getZ() => _z;

  void setZ(double z) => _z = z;

  void setXYZ(double x, double y, double z) {
    setXY(x, y);
    _z = z;
  }

  List<double> getXYZ() => [getX(), getY(), _z];

  String toString() => "(${getX()}, ${getY()}, $_z)";
}
