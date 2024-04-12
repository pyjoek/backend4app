import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Foods {
  final List<dynamic> foodname;
  final List<dynamic> img;
  final List<dynamic> id;
  final List<dynamic> price;

  Foods ({
    required this.foodname,
    required this.img,
    required this.id,
    required this.price,
  });
}

class MyDrinks extends StatelessWidget {
  const MyDrinks({super.key});

  Future<Foods> getFoods() async {
    String uri = "http://127.0.0.1:8000/api/drinks";
    final response = await http.get(Uri.parse(uri));
    List<dynamic> food = [];
    List<dynamic> ids = [];
    List<dynamic> prices = [];
    List<dynamic> imgs = [];
    if (response.statusCode == 200){
      food.add(json.decode(response.body)['foodname']);
      print(food);
    }
      return Foods(foodname: food, id: ids, price: prices, img: imgs);
  }

  @override 
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {getFoods()},
      child: Text("illo"),
    );
  }
}