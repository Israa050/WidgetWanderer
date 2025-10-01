import 'package:flutter/material.dart';

class FractionalTranslationWidget extends StatelessWidget {
  const FractionalTranslationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fractional Translation')),
      body: Center(
        child: FractionalTranslation(
          translation: const Offset(0.5, 0.0), // move right by half its width
          child: Container(width: 100, height: 100, color: Colors.blue),
        ),
      ),
    );
  }
}
