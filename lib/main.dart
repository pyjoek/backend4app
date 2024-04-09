import 'package:flutter/material.dart';
import 'package:one/drawer.dart';
import 'package:one/body.dart';
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