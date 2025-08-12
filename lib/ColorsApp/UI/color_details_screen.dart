import 'package:flutter/material.dart';

class ColorDetailsScreen extends StatelessWidget {
  final Color currentColor;
  final String label;

  const ColorDetailsScreen({
    super.key,
    required this.currentColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('$label Details'),
        centerTitle: true,
        backgroundColor: currentColor,
      ),
      backgroundColor: currentColor,
      body: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
