double result({double? n1, n2, n3, n4}) {
  List<double> resultList = [];
  if (n1 != null) {
    resultList.add(n1);
  }
  if (n2 != null) {
    resultList.add(n2);
  }
  if (n3 != null) {
    resultList.add(n3);
  }
  if (n4 != null) {
    resultList.add(n4);
  }
  int count = resultList.length;
  switch (count) {
    case 1:
      double sum = 0;
      for (double i = resultList[0]; i != 0; i--) {
        sum += i;
      }
      return sum;
    case 2:
      if (resultList[0] < resultList[1] ) {
        return resultList[1] / resultList[0];
      } else {
        return resultList[0] / resultList[1];
      }
    case 3:
      return resultList[0] * resultList[1] * resultList[2];
    case 4:
      return resultList[0] + resultList[1] + resultList[2] + resultList[3];
    case 0:
      return 0;
    default:
      return 0;
  }
}

void main() {
  print(result(n1: 1.0, n3: 10.0, n2: 1.0, n4: 9.0));
  print(result(n1: 5.0, n2: 9.0, n4: 8.0));
  print(result(n1: 1.0, n2: 5.0));
  print(result(n2: 6.0));
  print(result());
}
