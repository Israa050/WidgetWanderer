import 'package:flutter/material.dart';

class RotatedBoxWidget extends StatelessWidget {
  const RotatedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rotated Box Widget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RotatedBox(
            quarterTurns: 1, // rotate 90 degrees clockwise
            child: Text(
              "Hello Flutter",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.amber,
                child: RotatedBox(
                  quarterTurns: 1, // 90° clockwise
                  child: Icon(Icons.star, size: 50),
                ),
              ),
              Container(
                color: Colors.green,
                child: Transform.rotate(
                  angle: 1.57, // ~90° in radians
                  child: Icon(Icons.star, size: 50),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
