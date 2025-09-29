
import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterWidget extends StatelessWidget {
  const BackDropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Backdrop Filter Example'),
      ),
      body: Stack(
          fit: StackFit.expand,
          children: [
            // Background image
            Image.network(
              'https://picsum.photos/800/600',
              fit: BoxFit.cover,
            ),

            // Apply blur over part of the background
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), // Blur effect
                  child: Container(
                    width: 250,
                    height: 120,
                    alignment: Alignment.center,
                    color: Colors.white.withValues(alpha:0.2), // Semi-transparent overlay
                    child: const Text(
                      'Frosted Glass',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}