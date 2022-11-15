import 'dart:math';
import 'package:flutter/material.dart';

class SecondFile extends StatelessWidget {
  const SecondFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow,
      child: Container(
        height: 500.0,
        width: 300.0,
        child: Text(
          generateRandomNumbers(),
          textDirection: TextDirection.ltr,
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
