// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../app_large_text.dart';
import '../app_text.dart';

class UserAvatar extends StatelessWidget {
  final String image;
  final String course;
  final String user;
  final String location;
  final Icon icon;
  const UserAvatar(
      {Key? key,
      required this.image,
      required this.course,
      required this.user,
      required this.location,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
            colors: [
              Colors.grey.withOpacity(0.3),
              Colors.grey.withOpacity(0.5),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.white.withOpacity(0.3),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: icon,
                  ),
                  AppText(
                    text: course,
                    color: Colors.white,
                    size: 14.0,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppLargeText(
                    text: user,
                    color: Colors.white,
                    size: 16.0,
                  ),
                  AppText(
                    text: location,
                    color: Colors.white,
                    size: 12.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
