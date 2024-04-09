import 'package:flutter/material.dart';
import 'package:one/drawer.dart';
import 'package:one/fod.dart';
import 'package:one/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatefulWidget {
  State<_MyApp> createState() => _myapp();
}

class _myapp extends State<_MyApp> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 5,
        shadowColor: Colors.black,
        actions: [
          InkWell(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Icon(Icons.login, size: 40,),
            )
          )
        ],
      ),
      body: Center(
        child: Body(),
      ),
      drawer: Drawers(),
    );
  }
}

class Body extends StatelessWidget {
  final List<String> foods = ['pizza', 'burger', 'hotdog'];

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: foods.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage(foods[index])))
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15)
                ),
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  foods[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0
                  ),
                ),
              ),
            );
          },
        ),
    );
  }
}