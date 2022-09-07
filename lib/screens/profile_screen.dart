// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:dribble_clone/utils/app_colors.dart';
import 'package:dribble_clone/utils/app_large_text.dart';
import 'package:dribble_clone/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xfff0c541),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //first child
                Container(
                  width: double.maxFinite,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfffeff1fe),
                        Color(0xfffcf1f0),
                        Color(0xfffafcf4),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 25.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: AppLargeText(
                                text: 'Current Plan',
                                color: Colors.black87,
                                size: 16.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: AppLargeText(
                                text: 'Premium',
                                color: Color(0xfff0c541),
                                size: 20.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 12.0,
                                right: 12.0,
                              ),
                              child: AppLargeText(
                                text: '336,000',
                                color: Colors.black87,
                                size: 16.0,
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_outlined),
                                color: Color(0xfff0c541),
                                iconSize: 16.0,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/profile.png'),
                            ),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -15,
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xfffeff1fe),
                                    Color(0xfffcf1f0),
                                    Color(0xfffafcf4),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: Color(0xfff0c541),
                                ),
                                child: GestureDetector(
                                  onTap: ()=> debugPrint('Upload Photo'),
                                  child: Icon(
                                    FontAwesomeIcons.camera,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppLargeText(
                              text: 'John Doe',
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText(
                                text: 'Running Courses:',
                                color: Colors.black45,
                                size: 14.0,
                              ),
                              AppLargeText(
                                text: '32',
                                color: Colors.black,
                                size: 16.0,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                            width: 100,
                            child: LinearProgressIndicator(
                              value: 0.8,
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: AppLargeText(
                              text: '80% completed',
                              color: Colors.white,
                              size: 12.0,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 5.0,
                            width: 100,
                            child: LinearProgressIndicator(
                              value: 0.2,
                              backgroundColor: Colors.grey.shade300,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: AppLargeText(
                                  text: '20% completed',
                                  color: Colors.white,
                                  size: 12.0,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              // height: 30.0,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 236, 236),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xfffeff1fe),
                            Color(0xfffcf1f0),
                            Color(0xfffafcf4),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Icon(
                        Icons.scale_sharp,
                        color: Color(0xfff0c541),
                      ),
                    ),
                  ),
                  AppLargeText(
                    text: 'My Overview',
                    color: Colors.black,
                    size: 16.0,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(
                8.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(
                  color: Color.fromARGB(125, 240, 196, 65),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
              
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => debugPrint('HTML'),
                              icon: FaIcon(
                                FontAwesomeIcons.html5,
                                color: Color(0xfff0c541),
                                size: 32.0,
                              ),
                            ),
                            AppText(
                              text: 'HTML',
                              color: Colors.black,
                              size: 14.0,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => debugPrint('CSS3'),
                              icon: FaIcon(
                                FontAwesomeIcons.css3,
                                color: Color(0xfff0c541),
                                size: 32.0,
                              ),
                            ),
                            AppText(
                              text: 'CSS3',
                              color: Colors.black,
                              size: 14.0,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => debugPrint('Bootstrap'),
                              icon: FaIcon(
                                FontAwesomeIcons.bootstrap,
                                color: Color(0xfff0c541),
                                size: 32.0,
                              ),
                            ),
                            AppText(
                              text: 'Bootstrap',
                              color: Colors.black,
                              size: 14.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => debugPrint('Java'),
                              icon: FaIcon(
                                FontAwesomeIcons.java,
                                color: Color(0xfff0c541),
                                size: 32.0,
                              ),
                            ),
                            AppText(
                              text: 'Java',
                              color: Colors.black,
                              size: 14.0,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => debugPrint('Node JS'),
                              icon: FaIcon(
                                FontAwesomeIcons.nodeJs,
                                color: Color(0xfff0c541),
                                size: 32.0,
                              ),
                            ),
                            AppText(
                              text: 'nodeJS',
                              color: Colors.black,
                              size: 14.0,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => debugPrint('React'),
                              icon: FaIcon(
                                FontAwesomeIcons.react,
                                color: Color(0xfff0c541),
                                size: 32.0,
                              ),
                            ),
                            AppText(
                              text: 'React',
                              color: Colors.black,
                              size: 14.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              // height: 30.0,
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xffe5f6f0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: 'Active Courses',
                    color: Colors.green.shade500,
                    size: 16.0,
                  ),
                  FlutterSwitch(
                    activeColor: AppColors.mainColor,
                    value: status,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
