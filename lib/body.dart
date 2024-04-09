import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Foods {
  final List<dynamic> food;
  final List<dynamic> id;

  Foods({
    required this.food,
    required this.id,
  });
}

class Body extends StatelessWidget {
  Future<Foods> getFoods() async {
    String url = "http://192.168.0.157:8000/api/foods";
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      var returnedFood = json.decode(response.body);
      return Foods(
        food: returnedFood[0],
        id: returnedFood[1],
      );
    } else {
      throw Exception('Failed to load foods');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Foods>(
      future: getFoods(), 
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError){
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          Foods? foods = snapshot.data;
          return ListView.builder(
            itemCount: foods!.food.length,
            itemBuilder: (context, index) {
              return ListTile (
                title: Text(foods.food[index]),
              );
            },
          );
        }
      },
    );
  }
}
