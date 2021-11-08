import 'package:flutter/material.dart';

import 'main.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff445A66),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage();
            }));
          },
          child: Icon(Icons.logout)),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              child: new Image.asset(
                'assets/images/wave.png',
                height: 280.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Welcome back",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  fontFamily: "londrinashadowRegular"),
            ),
            SizedBox(
              height: 30,
            ),
            new Container(
              child: new Image.asset(
                'assets/images/home.png',
                height: 280.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Home Screen",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
