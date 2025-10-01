import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transform Widget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(0.5),
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue,
              child: Text(
                "Rotated!",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),


          Transform.scale(
  scale: 1.5, // 150%
  child: Icon(Icons.star, size: 50, color: Colors.amber),
),

Transform.translate(
  offset: Offset(30, 10), // move right & slightly down
  child: Text("Moved text"),
),

Transform(
  transform: Matrix4.skewX(0.3),
  child: Container(
    color: Colors.red,
    padding: EdgeInsets.all(20),
    child: Text("Skewed box", style: TextStyle(color: Colors.white)),
  ),
)

        ],
      ),
    );
  }
}
