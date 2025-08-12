import '../custom_functions/custom_functions.dart';

void switchTask() {
  int qA = 0, qV = 0, qC = 0, qU = 0;
  double priceA = 25.50;
  double priceV = 30.25;
  double priceC = 90.00;
  double priceU = 45.75;

  int input;

  do {
    input = getPositiveIntInput(
      '\nChoose a product from menu to add to cart.\n'
          '-----------------MENU----------------\n'
          '        Product        Price\n'
          '        1- A           25.50\n'
          '        2- V           30.25\n'
          '        3- C           90.00\n'
          '        4- U           45.75\n'
          'Enter 0 to Check out.\n'
          'Your choice: ',
    );

    switch (input) {
      case 1:
        qA += getPositiveIntInput('Enter the desired Qty of "A":');
        break;
      case 2:
        qV += getPositiveIntInput('Enter the desired Qty of "V":');
        break;
      case 3:
        qC += getPositiveIntInput('Enter the desired Qty of "C":');
        break;
      case 4:
        qU += getPositiveIntInput('Enter the desired Qty of "U":');
        break;
      case 0:
        print(
          '\n------------Check out------------\n'
              'Product      Price       Qty         Total\n',
        );
        if (qA != 0) {
          print('A           25.50        $qA         ${qA * priceA}');
        }
        if (qV != 0) {
          print('V           30.25        $qV         ${qV * priceV}');
        }
        if (qC != 0) {
          print('C           90.00        $qC         ${qC * priceC}');
        }
        if (qU != 0) {
          print('U           45.75        $qU         ${qU * priceU}');
        }
        print(
          'Total Amount ${(qA * priceA) + (qV * priceV) + (qC * priceC) + (qU * priceU)} \$',
        );
        break;
      default:
        print('Invalid input');
    }
  } while (input != 0);
}
