
import 'package:flutter/material.dart';

class DecoratedBoxWidget extends StatelessWidget {
  const DecoratedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decorated Box Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
          colors: [Colors.purple, Colors.blue],
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
          "Gradient Box",
          style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}