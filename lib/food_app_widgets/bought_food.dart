import 'package:flutter/material.dart';

class BoughtFood extends StatefulWidget {

  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  BoughtFood({this.id, this.name, this.imagePath, this.category, this.price,
  this.discount, this.ratings});

  @override
  _BoughtFoodState createState() => _BoughtFoodState();
}

class _BoughtFoodState extends State<BoughtFood> {



  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius : BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 230.0,
            width: 360.0,
            child: Image.asset(widget.imagePath, fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
            width: 360.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black87, Colors.black12,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Theme.of(context).primaryColor,size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),
                        Icon(Icons.star, color: Theme.of(context).primaryColor, size: 16.0,),

                        SizedBox(width: 20.0,),
                        Text
                          ("(" + widget.ratings.toString()+ "Reviews)",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                Column(
                  children: <Widget>[
                    Text(widget.price.toString(),
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,

                      ),
                    ),
                    Text("Min Order",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
