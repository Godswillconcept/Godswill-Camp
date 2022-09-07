// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text.dart';

class DynamicButton extends StatelessWidget {
  final String text;
  final double width;
  bool? isResponsive;
  final void Function()? onPressed;
  DynamicButton({
    Key? key,
    required this.text,
    this.isResponsive = false,
    required this.onPressed,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: width,
        height: 50,
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColors.mainColor,
        ),
        child: Center(
          child: AppText(
            text: text,
            color: Colors.white,
            size: 18.0,
          ),
        ),
      ),
    );
  }
}
