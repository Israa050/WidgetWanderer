
import 'package:flutter/material.dart';

class ExcludeSemanticsWidget extends StatelessWidget {
  const ExcludeSemanticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ExcludeSemantics Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Normal text - screen reader will read it
              const Text('Visible to screen readers'),

              const SizedBox(height: 20),

              // Excluded text - will NOT be read in the semantics tree
              ExcludeSemantics(
                child: const Text('This text is hidden from accessibility'),
              )

             
            ],
          ),
        ),
      );
  }
}