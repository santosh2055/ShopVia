import 'package:eapp/components/roundButton.dart';
import 'package:eapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:eapp/screens/DrawerContent_screen.dart';

class HomePageScreen extends StatefulWidget {
  static String id = 'homepage_screen.dart';

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Shop Via'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Search for product',
                        prefix: Icon(Icons.search),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: RoundedButton(
                        title: 'Search',
                        onpress: () {
                        
                        },
                        colour: Colors.blueAccent,
                      ),
                    )
                  ],
                ),
              ),
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: <Widget>[Text('Trending Items')],
              ),
              height: 1000,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      ),
      drawer: Drawercontent(),
    );
  }
}
