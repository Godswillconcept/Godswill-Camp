import 'package:flutter/material.dart';

class User {
  final String id;
  final String image;
  final String course;
  final String user;
  final String location;
  final Icon icon;

  User(
      {required this.id,
      required this.image,
      required this.course,
      required this.user,
      required this.location,
      required this.icon});
}
