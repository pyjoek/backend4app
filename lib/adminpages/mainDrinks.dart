import 'package:flutter/material.dart';
import 'package:one/adminpages/adminDrawer.dart';
import 'package:one/drinks.dart';
// import 'package:one/adminDrawer.dart';
// import 'package:one/dragg.dart';
// import 'package:one/drawer.dart';
// import 'package:one/drinks.dart';

void main() => runApp(Drinks());

class Drinks extends StatelessWidget {
  const Drinks ({super.key});

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
      ),
      body: Center(
        child: MyDrinks(),
      ),
      // body: Dragger(),
      drawer: AdminDrawers(),
    );
  }
}