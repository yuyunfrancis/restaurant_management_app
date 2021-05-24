import 'dart:async';

import 'package:flutter/material.dart';

import 'package:align_positioned/align_positioned.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/Screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WelcomeScreen();
        },
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.redAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 60.0,
                        child: Icon(
                          Icons.fastfood,
                          color: Colors.white,
                          size: 60.0,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/logo.svg",
                      ),
                    ],
                  ),
                )
              ),
               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top : 20),
                    ),
                    Text("ICELAND RESTAURANT",
                      style: TextStyle(color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image(
                      image: AssetImage('images/vegetable.png'),
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),

    );
  }
}