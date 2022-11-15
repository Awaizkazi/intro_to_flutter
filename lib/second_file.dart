import 'dart:math';
import 'package:flutter/material.dart';

class SecondFile extends StatelessWidget {
  const SecondFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow,
      child: Text(
        generateRandomNumbers(),
        textDirection: TextDirection.ltr,
      ),
    );
  }

  String generateRandomNumbers() {
    var r = Random();
    int i = r.nextInt(20);
    return 'A random Number between 1 to 20 is :  ${i}';
  }
}
