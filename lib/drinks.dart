import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Drinks {
  final List<dynamic> drinkname;
  // final List<dynamic> img;
  final List<int> id;
  final List<dynamic> price;

  Drinks ({
    required this.drinkname,
    // required this.img,
    required this.id,
    required this.price,
  });
}

class MyDrinks extends StatelessWidget {
  const MyDrinks({super.key});

  Future<Drinks> getDrinks() async {
    String uri = "http://127.0.0.1:8000/api/drinks";
    final response = await http.get(Uri.parse(uri));
    List<dynamic> food = [];
    List<int> ids = [];
    List<dynamic> prices = [];
    // List<dynamic> imgs = [];
    if (response.statusCode == 200){
      final results = json.decode(response.body);
      for (dynamic i in results) {
        food.add(i['drinkname']);
        ids.add(i['id']);
        prices.add(i['price']);
      }
      print([prices]);
    }
      return Drinks(drinkname: food, id: ids, price: prices);
      // return Foods(foodname: food, id: ids, price: prices, img: imgs);
  }

  @override 
  Widget build(BuildContext context) {
    return FutureBuilder<Drinks>(
      future: getDrinks(), 
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }else if(snapshot.hasError){
          return Center(
            child: Column(
              children: [
                Text("Error: ${snapshot.error}"),
                SizedBox(height: 10,),
                CircularProgressIndicator()
              ],
            ),
          );
        }else{
          Drinks? drinks = snapshot.data;
          return ListView.builder(
            itemCount: drinks!.drinkname.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(drinks.drinkname[index]),
                  Text(drinks.price[index]),
                ],
              );
            }
            );
        }
      }
    );
  }
}