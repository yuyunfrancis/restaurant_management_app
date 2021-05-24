
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';

class FoodModel extends Model {
  List<Food> _foods = [];


  List<Food> get foods{
    return List.from(_foods);
  }


void addFood(Food food)
{
  _foods.add(food);
}

void fetchFoods(){

    http.get(Uri.parse("http://192.168.43.46/flutter_food_app/api/foods/getFoods.php"))
        .then((http.Response response){
          print("Feching data: ${response.body}");

    });
    
}

}
