// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../utils/app_large_text.dart';
import '../utils/app_text.dart';
import '../utils/user/user_screen.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  CommunityScreen({Key? key}) : super(key: key);

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              left: 25.0,
              right: 25.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLargeText(
                      text: 'Community',
                      color: Colors.black,
                      size: 22.0,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 35,
                      ),
                      onPressed: () {
                        debugPrint('search members');
                      },
                    ),
                  ],
                ),
                AppText(
                  text: 'Meet people offering some courses',
                  color: Colors.black54,
                  size: 14.0,
                )
              ],
            ),
          ),
          SizedBox(
            height: 490,
            child: UserScreen(),
          ),
        ],
      ),
    );
  }
}
