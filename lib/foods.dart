import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Foods {
  final List<dynamic> food;
  final List<dynamic> img;
  final List<dynamic> price;
  final List<dynamic> id;

  Foods({
    required this.food,
    required this.id,
    required this.img,
    required this.price,
  });
}

class Body extends StatelessWidget {
  Future<Foods> getFoods() async {
    String url = "http://192.168.0.114:8000/api/foods";
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      var returnedFood = json.decode(response.body);
      List<String> foodss = [];
      List<String> imgs = [];
      List<int> idss = [];
      List<dynamic> prices = [];
      for (dynamic fods in returnedFood) {
        foodss.add(fods['foodname']);
        imgs.add(fods['img']);
        prices.add(fods['price']);
        idss.add(fods['id']);
      }
      return Foods(food: foodss, id: idss, img: imgs, price: prices);

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
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError){
          return Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Error: ${snapshot.error}", style: TextStyle(color: Colors.red),),
              const SizedBox(height: 30,),
              const CircularProgressIndicator()
            ],
          ),);
        } else {
          Foods? foods = snapshot.data;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: foods!.food.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image(image: AssetImage("images/pizza.jpeg")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(foods.food[index], style: TextStyle(fontWeight: FontWeight.w900),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            height: 25,
                            width: 90,
                            child: Center(child: Text("Call Waiter", style: TextStyle(fontWeight: FontWeight.w900),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21),
                              color: Colors.blue
                            ),
                          ),
                        ),
                        Text(foods.price[index]),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            height: 25,
                            width: 90,
                            child: Center(child: Text("Call Waiter", style: TextStyle(fontWeight: FontWeight.w900),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(21),
                              color: Colors.blue
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          );
        }
      },
    );
  }
}
