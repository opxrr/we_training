class Car{
  late double price;
  late String color;
  late String country;
  late String code;

  Car({this.price =0, this.color='',this.country ='',this.code=''});

  void printCar(){
    print('Color :$color\n'
        'Country :$country\n'
        'Code :$code\n'
        'Price :$price');
  }
}

