import 'package:eapp/screens/homepage_screen.dart';
import 'package:eapp/screens/login_screen.dart';
import 'package:eapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:eapp/screens/registration_screen.dart';

void main() => runApp(ShopVia());

class ShopVia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelecomeScreen.id,
      routes: {
        WelecomeScreen.id: (context) => WelecomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomePageScreen.id: (context) => HomePageScreen(),
      },
    );
  }
}
