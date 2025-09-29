
import 'package:flutter/material.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ClipPath Example")),
        body: Center(
          child: ClipPath(
            clipper: TriangleClipper(), // 👈 our custom path
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Triangle",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      );
  }
}


class TriangleClipper extends CustomClipper<Path>{

  /// Custom clipper that defines a triangle path
  @override
  Path getClip(Size size) {
    Path path = Path();
    // Start from bottom-left corner
    path.moveTo(0, size.height);
    // Draw line to top center
    path.lineTo(size.width / 2, 0);
    // Draw line to bottom-right corner
    path.lineTo(size.width, size.height);
    // Close the path back to bottom-left
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)=> false;
 
}