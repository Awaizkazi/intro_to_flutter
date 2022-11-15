import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intro_to_flutter/util.dart';

class SecondFile extends StatelessWidget {
  const SecondFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.yellow,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: const Text(
                      'Expanded',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.blueAccent,
                    child: const Text(
                      'Flexible',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ),
              ],
            ),
            // Both are Flexible Widgetss
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.yellow,
                    child: const Text(
                      'Flexible',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.yellow,
                    child: const Text(
                      'Flexible',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ),
              ],
            ),
            // Both are Expanded Widgets
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: const Text(
                      'Expanded',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.redAccent,
                    child: const Text(
                      'Expanded',
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String generateRandomNumbers() {
    var r = Random();
    int i = r.nextInt(20);
    return 'A random Number between 1 to 20 is :  ${i}';
  }
}
