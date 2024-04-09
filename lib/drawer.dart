import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override 
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: [
          AppBar(title: Text('Menu'))
        ],
      ),
    );
  }
}