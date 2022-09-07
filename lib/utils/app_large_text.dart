import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const AppLargeText(
    {
      Key? key, 
      required this.text, 
      required this.color, 
      this.size = 30.0,
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}