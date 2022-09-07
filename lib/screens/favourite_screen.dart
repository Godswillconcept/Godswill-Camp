// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dribble_clone/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/app_large_text.dart';
import '../utils/app_text.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
                color: Colors.black,
              ),
            ),
          ),
        ),
        title: AppLargeText(
            text: 'Favourite Class', color: Colors.black, size: 22.0),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 10.0),
        child: ListView.builder(
          itemCount: 4,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    child: Icon(
                      Icons.bookmark,
                      color: AppColors.mainColor,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
