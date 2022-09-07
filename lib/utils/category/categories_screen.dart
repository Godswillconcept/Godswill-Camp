// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../utils/category/category_data.dart';
import '../../utils/category/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 150 / 50,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
      ),
      children: CATEGORY_DATA
          .map(
            (categoryItem) => CategoryItem(
                icon: categoryItem.icon,
                text: categoryItem.text,
                ),
          )
          .toList(),
    );
    
  }
}
