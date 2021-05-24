import 'package:flutter/material.dart';
import 'package:food_app/food_app_widgets/food_category.dart';
import 'package:food_app/food_app_widgets/home_top_info.dart';
import 'package:food_app/food_app_widgets/search_field.dart';
import 'package:food_app/food_app_widgets/bought_food.dart';
import 'package:food_app/data/food_data.dart';
import '../models/food_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Food> _food = foods;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequently Bought Food",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text("View All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _food.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      child: BoughtFood(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}
