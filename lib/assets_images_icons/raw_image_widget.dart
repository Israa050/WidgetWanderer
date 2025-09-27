
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RawImageWidget extends StatefulWidget {
  const RawImageWidget({super.key});

  @override
  State<RawImageWidget> createState() => _RawImageWidgetState();
}

class _RawImageWidgetState extends State<RawImageWidget> {

  ui.Image? image;

  @override
  void initState() {
    super.initState();
    loadImage();
  }

///RawImage is a low-level widget that directly displays a dart:ui.Image.

///Unlike the higher-level Image widget, RawImage does not manage image loading for you.

///It just paints the already available image on the screen.

///You are responsible for disposing the Image when it’s no longer needed.

///You can control scaling, alignment, and color filtering manually.

  Future<void> loadImage() async {
    // Load image bytes from assets
    final ByteData data = await rootBundle.load('assets/conan.jpg');
    final Uint8List bytes = data.buffer.asUint8List();

    // Decode image into dart:ui.Image
    final ui.Codec codec = await ui.instantiateImageCodec(bytes);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    
    setState(() {
      image = frameInfo.image;
    });
  }

  @override
  void dispose() {
    image?.dispose(); // Dispose of the image to free memory
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('RawImage Example')),
        body: Center(
          child: image == null
              ? const CircularProgressIndicator()
              : RawImage(
                  image: image,
                  scale: 1.0,
                  fit: BoxFit.contain,
                ),
        ),
      );
  }
}