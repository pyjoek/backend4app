import 'package:flutter/material.dart';
import 'package:one/adminpages/adminDrawer.dart';

void main() => runApp(Admin());

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: _admin(),
    );
  }
}

class _admin extends StatefulWidget{
  @override 
  State<_admin> createState() => AdminPage();
}

class AdminPage extends State<_admin> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 68, 68),
      appBar: AppBar(
        title: Text("Admin Page", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 7,
        shadowColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 68, 68, 68),
      ),
      drawer: AdminDrawers(),
    );
  }
}