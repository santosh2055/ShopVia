import 'package:eapp/components/roundButton.dart';
import 'package:eapp/screens/homepage_screen.dart';
import 'package:eapp/screens/registration_screen.dart';
import 'package:flutter/material.dart';
//import 'package:eapp/screens/login_screen.dart';

class WelecomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelecomeScreenState createState() => _WelecomeScreenState();
}

class _WelecomeScreenState extends State<WelecomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('ShopVia',
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                ],
              ),
              SizedBox(height: 48),
              RoundedButton(
                title: "Login",
                colour: Colors.lightBlueAccent,
                onpress: () {
                  Navigator.pushNamed(context, HomePageScreen.id);
                  //for developing purpose   
                  // Navigator.pushNamed(context, Login_screen.id);
                },
              ),
              SizedBox(height: 4),
              RoundedButton(
                title: "Registration",
                colour: Colors.lightBlueAccent,
                onpress: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
            ],
          ),
        ));
  }
}
