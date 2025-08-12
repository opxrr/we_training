class Point2D {
  double _x = 0.0;
  double _y = 0.0;

  Point2D(this._x, this._y);

  Point2D.defaultPoint();

  double getX() => _x;

  double getY() => _y;

  void setX(double x) => _x = x;

  void setY(double y) => _y = y;

  void setXY(double x, double y) {
    _x = x;
    _y = y;
  }

  List<double> getXY() => [_x, _y];

  @override
  String toString() => "($_x, $_y)";
}
