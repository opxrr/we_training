import 'package:flutter/material.dart';
import '../UI/color_details_screen.dart';

class ColorBtn extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color buttonColor;
  final Color screenColor;

  const ColorBtn({
    super.key,
    required this.label,
    required this.textColor,
    required this.buttonColor,
    required this.screenColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ColorDetailsScreen(currentColor: screenColor, label: label),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(15),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
