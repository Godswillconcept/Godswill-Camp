// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../screens/profile_screen.dart';
import '../../utils/user/user_avatar.dart';
import '../../utils/user/user_data.dart';
import '../../model/user.dart';

class UserScreen extends StatelessWidget {
  List<User> user_data = USER_DATA;

  UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: GridView.builder(
            itemCount: user_data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ),
            itemBuilder: (context, i) {
              User user = user_data[i];
              return UserAvatar(
                image: user.image,
                course: user.course,
                user: user.user,
                location: user.location,
                icon: user.icon,
              );
            },
          ),
        ),
      ),
    );
  }
}
