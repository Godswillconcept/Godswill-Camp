// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables
// import 'package:dribble_clone/utils/category_box.dart';

import 'package:dribble_clone/screens/profile_screen.dart';
import 'package:dribble_clone/screens/search_screen.dart';
import 'package:dribble_clone/utils/app_text.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_large_text.dart';
import '../utils/category/categories_screen.dart';

class DiscoverScreen extends StatefulWidget {
  DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final userImages = [
    'class/01.jpg',
    'class/02.jpg',
    'class/03.jpg',
    'class/04.jpg',
  ];
  final userNames = [
    'John Doe',
    'Brian king',
    'Samual Peter',
    'Petr Schchediel',
  ];
  final _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              left: 25.0,
              right: 25.0,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(
                      text: 'Discover',
                      color: Colors.black87,
                      size: 24.0,
                    ),
                    AppText(
                      text: 'Discover amazing and enlightening courses',
                      color: Colors.black87,
                      size: 14.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),

          //Search box
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(
                          color: Colors.green.shade500,
                          width: 3.0,
                          style: BorderStyle.solid,
                        ),
                      ),
                      hintText: 'Search Course',
                      prefixIcon: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return SearchScreen();
                              },
                            ),
                          );
                        },
                        icon: Icon(Icons.search_sharp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 230,
            child: CategoriesScreen(),
          ),

          //Popular Members
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(
                  text: 'Popular Members',
                  color: Colors.black.withOpacity(0.8),
                  size: 16.0,
                ),
                AppText(
                  text: 'Active members in various courses',
                  color: Colors.black45,
                  size: 12.0,
                ),
                //Space
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: userImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return ProfileScreen();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                // margin: EdgeInsets.only(right: 10.0),
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'images/${userImages[index]}'),
                                      fit: BoxFit.cover),
                                  color: AppColors.textColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: AppLargeText(
                                  text: userNames[index],
                                  color: Colors.black54,
                                  size: 12.0),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
