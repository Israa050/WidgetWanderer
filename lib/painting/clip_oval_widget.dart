import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClipOval Example')),
      body: Center(
        // ClipOval will clip its child into an oval shape
        // But with a custom clipper, we can control the rectangle area
        // used to calculate the oval's size and position
        child: ClipOval(
          clipper: MyOvalClipper(), // 👈 apply our custom clipper
          child: Image.network(
            'https://picsum.photos/800/600',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class MyOvalClipper extends CustomClipper<Rect> {
 
  @override
  Rect getClip(Size size) {
   // The child widget has a certain width & height (from `size`)
  // Here we inset (shrink) the rectangle by 20 pixels from each side
  // This smaller rectangle will be used to inscribe the oval
    return Rect.fromLTWH(
      20,                  // distance from left
      20,                  // distance from top
      size.width - 40,     // reduce width (20 left + 20 right)
      size.height - 40,    // reduce height (20 top + 20 bottom)
      );
  }

  @override
   // Return true if the clip needs to update when widget rebuilds.
  // Here it's always false because our clip area never changes.
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
