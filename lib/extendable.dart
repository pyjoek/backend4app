import 'package:flutter/material.dart';

class Dragger extends StatefulWidget {
  @override 
  State<Dragger> createState() => _drag();
}

class _drag extends State<Dragger> {
  double _left = 60;
  double _top = 3 / 4;

  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              setState(() {
                _left -= details.delta.dy;
                if (_left > MediaQuery.of(context).size.height * _top) {
                  _left = MediaQuery.of(context).size.height * _top;
                }else if (_left < 60) {
                  _left = 60;
                }
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: _left,
              color: Colors.blue,
              child: Center(
                child: Text("Drag me"),
              ),
            ),
          ),
            )
      ],
    );
  }
}