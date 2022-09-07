// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:dribble_clone/components/navbar_tab.dart';
import 'package:dribble_clone/components/sign_up.dart';
import 'package:dribble_clone/utils/app_text.dart';
import 'package:dribble_clone/utils/dynamic_button.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool isChecked = false;

  final _formKey = GlobalKey();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
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
        title:
            AppText(text: 'Forget Password', color: Colors.black, size: 22.0),
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0.3),
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 18.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 3.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                        labelText: 'Email Address',
                        hintText: 'Enter your Email Address',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 18.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.green.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_rounded),
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 18.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.green.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_rounded),
                        labelText: 'Confirm Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(
                              () {
                                isChecked = value!;
                              },
                            );
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return ForgetPassword();
                                },
                              ),
                            );
                          },
                          child: AppText(
                              text: 'Remember Me',
                              color: Colors.green.shade500,
                              size: 16.0),
                        ),
                      ],
                    ),
                  ),
                  Center(
                      child: DynamicButton(
                    text: 'Login',
                    width: double.maxFinite,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return NavbarTab();
                          },
                        ),
                      );
                    },
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                            text: "Don't have an account",
                            color: Colors.black,
                            size: 16.0),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return SignUp();
                                },
                              ),
                            );
                          },
                          child: AppText(
                              text: 'Sign Up',
                              color: Colors.green.shade500,
                              size: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
