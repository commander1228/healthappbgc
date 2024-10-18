
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                    },
                    label: Text('Add Student'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ...


