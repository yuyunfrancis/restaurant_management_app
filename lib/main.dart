import 'package:flutter/material.dart';
import 'package:food_app/Screens/homescreen.dart';
import 'package:food_app/Screens/login_screen.dart';
import 'package:food_app/Screens/main_screen.dart';
import 'package:food_app/Screens/signup_screen.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/scopemodel/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:food_app/splash_screen.dart';

import 'Screens/welcome_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final FoodModel foodModel = FoodModel();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<FoodModel>(
      model : foodModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: ThemeData(
          primaryColor: Colors.redAccent,
          accentColor: Colors.white,
        ),
        home: MainScreen(foodModel: foodModel),
      ),
    );
  }
}