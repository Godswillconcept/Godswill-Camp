// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dribble_clone/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_large_text.dart';
import '../utils/app_text.dart';
import 'favourite_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _formKey = GlobalKey();
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.3),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(12.0)),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ),
        title: AppLargeText(text: 'Search', color: Colors.black, size: 22.0),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 25.0,
              right: 25.0,
            ),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                        labelText: 'Email Address',
                        suffixIcon: Icon(Icons.cancel),
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
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.filter_alt),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: AppColors.primaryColor,
              ),
              child: AppLargeText(
                text: 'Showing 225 classes about Design',
                color: AppColors.backgroundColor,
                size: 14.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLargeText(
                  text: 'Design Classes',
                  color: Colors.black,
                  size: 18.0,
                ),
                SizedBox(height: 10.0),
                //Search results
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 12.0),
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                  image: AssetImage('images/class/04.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  AppLargeText(
                                    // text: lectureTitles[index],
                                    text:
                                        'The Practical Defense of Chinese Seizing Arts for All Style (Seizing Arts for All Martial Arts Styles).',
                                    color: Colors.black,
                                    size: 14.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12.0),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconButton(
                                icon: Icon(Icons.bookmark),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return FavouriteScreen();
                                      },
                                    ),
                                  );
                                },
                              ),
                            )
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
