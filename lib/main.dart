import 'package:flutter/material.dart';
import 'package:widgets_playground/painting/clip_rect_widget.dart';
import 'package:widgets_playground/painting/custom_paint_widget.dart';
import 'package:widgets_playground/painting/decorated_box_widget.dart';
import 'package:widgets_playground/painting/fractional_translation_widget.dart';
import 'package:widgets_playground/painting/opacity_widget.dart';
import 'package:widgets_playground/painting/rotated_box_widget.dart';
import 'package:widgets_playground/painting/transform_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Playground',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TransformWidget(),
    );
  }
}