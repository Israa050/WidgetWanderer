import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardListenerWidget extends StatefulWidget {
  const KeyboardListenerWidget({super.key});

  @override
  State<KeyboardListenerWidget> createState() => _KeyboardListenerWidgetState();
}

class _KeyboardListenerWidgetState extends State<KeyboardListenerWidget> {
  final FocusNode _focusNode = FocusNode();
  String _lastKeyPressed = 'None';

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus(); // Automatically focus to receive key events
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleKey(KeyEvent event) {
    setState(() {
      if (event is KeyDownEvent) {
        _lastKeyPressed = event.logicalKey.debugName ?? 'Unknown';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KeyboardListener Example')),
      body: Center(
        child: KeyboardListener(
          focusNode: _focusNode,
          onKeyEvent: _handleKey,
          autofocus: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Press any key on your keyboard:'),
              const SizedBox(height: 20),
              Text(
                'Last key pressed: $_lastKeyPressed',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
