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
          children: [
            Container(
              height: 500.0,
              width: 300.0,
              color: lightPurpleColor,
              // alignment: const Alignment(0, 0),
              // decoration: const BoxDecoration(
              //   gradient: RadialGradient(
              //     colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
              //     stops: [0.2, 0.5, 0.7, 1.0],
              //     center: Alignment(0.1, 0.3),
              //     focal: Alignment(-0.1, 0.6),
              //   ),
              // ),
              // child: GestureDetector(
              //   onTap: (() {
              //     final message = SnackBar(
              //         content: const Text(
              //           'It was pressed',
              //         ),
              //         action: SnackBarAction(label: 'Undo', onPressed: () {}));
              //     ScaffoldMessenger.of(context).showSnackBar(message);
              //   }),
              //   child: Text(
              //     generateRandomNumbers(),
              //     textDirection: TextDirection.ltr,
              //     style: const TextStyle(
              //         fontSize: 15.0,
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),
            ),
            Container(
              width: 100.0,
              height: 500.0,
              color: Colors.green,
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
