

import 'package:flutter/material.dart';

class AutoCompleteWidge extends StatelessWidget {
  const AutoCompleteWidge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Autocomplete Basic')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
               Text(
                  'Type below to autocomplete the following possible results: ${AutocompleteBasicExample._kOptions}.',
                ),
        
                const AutocompleteBasicExample(),
        
              
            ],
          ),
        ),
      ),
    );
  }
}


class AutocompleteBasicExample extends StatelessWidget {
  const AutocompleteBasicExample({super.key});


  static const List<String> _kOptions = <String>['banana', 'peach', 'apples'];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
     optionsBuilder: (textEditingValue) {
       if(textEditingValue.text == ''){
        return const Iterable.empty();
       }
       return _kOptions.where((option){
        return option.contains(textEditingValue.text.toLowerCase());
       });
     },
     onSelected: (option) {
        debugPrint('You just selected $option');
     },
    );
  }
}