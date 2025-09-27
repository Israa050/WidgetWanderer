
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetBundleWidget extends StatelessWidget {
  const AssetBundleWidget({super.key});

///AssetBundle is an abstract class that represents a collection of resources used by a Flutter app. These resources could be:

///Images (.png, .jpg, etc.)

///Text files

///JSON files

///Fonts or any other files packaged with your app

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/data/sample.txt');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('AssetBundle Example')),
        body: Center(
          child: FutureBuilder<String>(
            future: loadAsset(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Text(snapshot.data ?? 'No data found');
              }
            },
          ),
        ),
      );
  }
}