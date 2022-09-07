// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../components/forgetPassword.dart';
import '../components/navbar_tab.dart';
import '../components/sign_up.dart';
import '../utils/app_large_text.dart';
import '../utils/app_text.dart';
import '../utils/dynamic_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
        title: AppText(text: 'Login', color: Colors.black, size: 22.0),
        centerTitle: true,
        backgroundColor: Colors.white.withOpacity(0.2),
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
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        fillColor: Colors.amber,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                        // prefixIcon: Icon(Icons.email_outlined),
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
                      keyboardType: TextInputType.visiblePassword,
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
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
                              text: 'Forget Password?',
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

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(
                      height: 1.0,
                      color: Colors.black,
                    ),
                  ),

                  //Other Sign in options
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.green.shade500,
                        )),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/google.png',
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 50.0),
                        AppLargeText(
                          text: 'Sign In with Google',
                          color: Colors.black,
                          size: 16.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.green.shade500,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/apple-logo.png',
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 50.0),
                        AppLargeText(
                          text: 'Sign In with Apple',
                          color: Colors.black,
                          size: 16.0,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.green.shade500,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/facebook.png',
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 50.0),
                        AppLargeText(
                          text: 'Sign in with Facebook',
                          color: Colors.black,
                          size: 16.0,
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
