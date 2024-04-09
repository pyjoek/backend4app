import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  final String foodname;

  FoodPage(this.foodname);
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(foodname),
          centerTitle: true,
          elevation: 4,
          shadowColor: Colors.black,
          leading: IconButton(onPressed: () => {Navigator.pop(context)}, icon: Icon(Icons.arrow_back)),
        ),
      ),
    );
  }
}