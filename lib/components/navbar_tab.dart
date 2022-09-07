// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dribble_clone/screens/community_screen.dart';
import 'package:dribble_clone/screens/discover_screen.dart';
import 'package:dribble_clone/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../screens/dashboard_screen.dart';
// import 'community_nav.dart';

class NavbarTab extends StatefulWidget {
  const NavbarTab({Key? key}) : super(key: key);

  @override
  State<NavbarTab> createState() => _NavbarTabState();
}

class _NavbarTabState extends State<NavbarTab> {
  int currentIndex = 0;
  final List screens = [
    DashboardScreen(),
    DiscoverScreen(),
  
    CommunityScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Bottom Navigation Bar'),
      // ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        curve: Curves.easeInOut,
        showElevation: false,
        selectedIndex: currentIndex,
        onItemSelected: (index) => setState(
          () {
            currentIndex = index;
          },
        ),
        items: [
          BottomNavyBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Dashboard'),
            activeColor: AppColors.mainColor,
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.sensors),
            title: Text('Discover'),
            activeColor: AppColors.mainColor,
            inactiveColor: Colors.grey,
          ),
         
          BottomNavyBarItem(
            icon: Icon(Icons.groups_rounded),
            title: Text('Community'),
            activeColor: AppColors.mainColor,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
