import 'package:flutter/material.dart';
import 'package:widgets_playground/accessibility_widgets/merge_semantics_widget.dart';
import 'package:widgets_playground/accessibility_widgets/semantics_widget.dart';
import 'package:widgets_playground/assets_images_icons/asset_bundle_widget.dart';
import 'package:widgets_playground/assets_images_icons/raw_image_widget.dart';

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
      home: MergeSemanticsWidget(),
    );
  }
}