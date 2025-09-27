
import 'package:flutter/material.dart';

class MergeSemanticsWidget extends StatefulWidget {
  const MergeSemanticsWidget({super.key});

  @override
  State<MergeSemanticsWidget> createState() => _MergeSemanticsWidgetState();
}

class _MergeSemanticsWidgetState extends State<MergeSemanticsWidget> {
    bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('MergeSemantics Example')),
        body: Center(
          child: MergeSemantics(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Subscribe'),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      );
  }
}