import 'package:flutter/material.dart';

class Draggers extends StatefulWidget {
  @override 
  State<Draggers> createState() => _drag();
}

class _drag extends State<Draggers> {
  double _left = 0;
  double _top = 0;

  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _left,
          top: _top,
          child: Draggable(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text("Drag me"),
              ),
            ), 
            feedback: Container(
              width: 200,
              height: 200,
              color: Colors.blue.withOpacity(0.5),
              child: Center(
                child: Text("Drag me"),
              ),
            ),
            onDraggableCanceled: (Velocity, Offset) {
              setState(() {
                _left = Offset.dx;
                _top = Offset.dy;
              });
            },
            ))
      ],
    );
  }
}