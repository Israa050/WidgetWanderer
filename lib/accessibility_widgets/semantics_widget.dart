
import 'package:flutter/material.dart';

class SemanticsWidget extends StatelessWidget {
  const SemanticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Semantics Example')),
        body: Center(
         ///The Semantics widget adds semantic information to the widget tree, which can be used by:
         ///Screen readers (like TalkBack on Android or VoiceOver on iOS)
         ///Accessibility tools
         ///Automated testing tools
         ///It doesn’t visually change anything. Instead, it provides metadata about widgets
          child: Semantics(
            label: 'Tap the star to mark as favorite',
            hint: 'Double tap to toggle favorite',
            button: true,
            child: IconButton(
              icon: const Icon(Icons.star),
              color: Theme.of(context).colorScheme.primary,
              onPressed: () {
                // Do something when pressed
              },
            ),
          ),
        ),
      );
  }
}