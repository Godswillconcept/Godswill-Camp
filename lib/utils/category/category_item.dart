// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../app_text.dart';

class CategoryItem extends StatelessWidget {
  final Icon icon;
  final String text;
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10.0,
          ),
          AppText(text: text, color: Colors.black, size: 16.0),
        ],
      ),
    );
  }
}
