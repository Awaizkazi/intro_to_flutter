import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intro_to_flutter/util.dart';

class SecondFile extends StatelessWidget {
  const SecondFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow,
      child: Container(
        height: 500.0,
        width: 300.0,
        alignment: Alignment(0, 0),
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
            stops: [0.2, 0.5, 0.7, 1.0],
            center: Alignment(0.1, 0.3),
            focal: Alignment(-0.1, 0.6),
          ),
        ),
        child: GestureDetector(
          onTap: (() {
            final message = SnackBar(content: Text('This is a SnackBar '));
          }),
          child: Text(
            generateRandomNumbers(),
            textDirection: TextDirection.ltr,
          ),
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
