// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_large_text.dart';
import '../utils/app_text.dart';
import '../utils/dynamic_button.dart';
import '../components/log_in.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List startImages = [
    'test.png',
    'online.png',
    'admin.png',
  ];

  List startHeaderTexts = [
    'Make learning Accessible Anywhere',
    'Empower Your Learning Experience',
    'Systematic Learning Schemes and Schedules'
  ];

  List startBodyTexts = [
    'Save yourself time try bringing your classroom and home together',
    'Learning made easy with Godswill Camp',
    'Synchronize your learning with your schedule'
  ];

  List buttonLabels = ['Explore', 'Get Started', 'SignUp'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: startImages.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.backgroundColor,
                  AppColors.backgroundColor.withOpacity(0.9),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(
                25.0,
              ),
              child: Column(
                children: [
                  //First Content
                  Column(
                    children: [
                      //Brand logo
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Image.asset(
                          'images/gc.png',
                          fit: BoxFit.contain,
                          height: 50.0,
                        ),
                      ),
                      //Space
                      SizedBox(
                        height: 30.0,
                      ),
                      //Start Page image
                      Image.asset(
                        'images/${startImages[index]}',
                        fit: BoxFit.contain,
                        width: 300,
                        height: 150,
                      ),
                      //Space
                      SizedBox(height: 30.0),

                      SizedBox(
                        width: 200,
                        child: Column(
                          children: [
                            AppLargeText(
                              text: startHeaderTexts[index],
                              color: Colors.black,
                              size: 22.0,
                            ),
                            //Space
                            SizedBox(height: 20.0),

                            AppText(
                              text: startBodyTexts[index],
                              color: Colors.black,
                              size: 14.0,
                            ),

                            //Space
                            SizedBox(
                              height: 0.0,
                            ),
                            //
                            DynamicButton(
                              text: buttonLabels[index],
                              width: double.maxFinite,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LogIn(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //spacer
                  Spacer(
                    flex: 1,
                  ),
                  //Second Content
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        startImages.length,
                        (indicatorIndex) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 2.0,
                            ),
                            width: 4,
                            height: (index == indicatorIndex) ? (16) : (8),
                            decoration: BoxDecoration(
                              color: (index == indicatorIndex)
                                  ? (Colors.purple.shade700)
                                  : (Color(0xfff0c541)),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          );
                        },
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
