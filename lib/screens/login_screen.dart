import 'package:eapp/components/roundButton.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              textAlign: TextAlign.center,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Your Email'),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter Your Password'),
            ),
            SizedBox(height: 48),
            RoundedButton(
              onpress: () {
              
              },
              title: 'Login',
              colour: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
