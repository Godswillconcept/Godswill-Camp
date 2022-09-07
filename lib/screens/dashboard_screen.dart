// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dribble_clone/screens/profile_screen.dart';
import 'package:dribble_clone/screens/search_screen.dart';
import 'package:dribble_clone/utils/app_colors.dart';
import 'package:dribble_clone/utils/app_large_text.dart';
import 'package:dribble_clone/utils/app_text.dart';
import 'package:flutter/material.dart';
import '../utils/category/category_data.dart';
import '../utils/category/category_item.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final classImages = [
    'class/01.jpg',
    'class/02.jpg',
    'class/03.jpg',
    'class/04.jpg',
  ];
  final classNames = [
    'UI/UX Design',
    'Art and Craft',
    'Computering',
    'E-Learning',
  ];
  final lectureTitles = [
    'Modular Design Frameworks : A Projects-based Guide for UI/UX Design',
    'The Practical Defense of Chinese Seizing Arts for All Style (Seizing Arts for All Martial Arts Styles).',
    'Theory of Computer Science (Automata, Languages and Computation) Third Edition.',
    "Designing Successful e-Learning, Michael Allen's Online Learning Library.",
  ];

  final _formKey = GlobalKey();
  final searchController = TextEditingController();
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(
                      text: 'Welcome, Godswill',
                      color: Colors.black,
                      size: 22.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AppText(
                        text: "What's on your mind?",
                        color: Colors.black.withOpacity(0.4),
                        size: 16.0),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_active_rounded),
                    SizedBox(
                      width: 20.0,
                    ),
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
                      child: Image.asset(
                        'images/profile.png',
                        width: 40.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Space
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
                    controller: searchController,
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
          //Space
          SizedBox(
            height: 20.0,
          ),
          //Category box
          Container(
            padding: EdgeInsets.only(
              left: 25.0,
            ),
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: CATEGORY_DATA
                  .map(
                    (categoryItem) => CategoryItem(
                      icon: categoryItem.icon,
                      text: categoryItem.text,
                    ),
                  )
                  .toList(),
            ),
          ),
          //Space
          SizedBox(
            height: 20.0,
          ),

          //Recent Class

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(
                  text: 'Recent Class',
                  color: Colors.black.withOpacity(0.8),
                  size: 18.0,
                ),
                SizedBox(
                  height: 20.0,
                ),

                //Running class container
                SizedBox(
                  height: 510,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: classImages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 400,
                        // height: 100,
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.all(14.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.black12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'images/${classImages[index]}'),
                                    fit: BoxFit.cover),
                                color: AppColors.textColor,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 170,
                              child: Column(
                                children: [
                                  AppLargeText(
                                    text: lectureTitles[index],
                                    color: Colors.black,
                                    size: 14.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: SizedBox(
                                      height: 2.0,
                                      width: 200,
                                      child: LinearProgressIndicator(
                                        value: 0.8,
                                        backgroundColor: Colors.orange.shade200,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AppText(
                                          text: 'Time:',
                                          color: Colors.black,
                                          size: 12.0,
                                        ),
                                        AppText(
                                          text: '00:57 / 02:38',
                                          color: Colors.black,
                                          size: 12.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
          //Space
          SizedBox(
            height: 20.0,
          ),

          //Recommended class
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(
                      text: 'Recommended Classes for you',
                      color: Colors.black.withOpacity(0.8),
                      size: 18.0,
                    ),
                    AppText(
                      text: 'Explore best courses',
                      color: Colors.black45,
                      size: 14.0,
                    ),
                  ],
                ),
                //space
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            padding: EdgeInsets.only(left: 25.0),
            child: ListView.builder(
              itemCount: classImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(right: 10.0),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                              image: AssetImage('images/${classImages[index]}'),
                              fit: BoxFit.cover),
                          color: AppColors.textColor,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: AppLargeText(
                            text: classNames[index],
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
    );
  }
}
