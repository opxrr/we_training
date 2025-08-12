import 'package:flutter/material.dart';
import 'ColorsApp/UI/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
