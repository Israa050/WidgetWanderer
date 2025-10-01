import 'package:flutter/material.dart';

class OpacityWidget extends StatelessWidget {
  const OpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Opacity Widget')),
      body: Center(
        child: Opacity(
          opacity: 0.5, // 50% transparent
          child: Container(width: 100, height: 100, color: Colors.blue),
        ),
      ),
    );
  }
}



class FadeDemo extends StatefulWidget {
  const FadeDemo({super.key});

  @override
  _FadeDemoState createState() => _FadeDemoState();
}

class _FadeDemoState extends State<FadeDemo> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Opacity Demo")),
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 1),
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleOpacity,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

