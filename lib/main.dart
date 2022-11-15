import 'package:flutter/material.dart';
import 'package:intro_to_flutter/first_file.dart';
// import 'package:intro_to_flutter/second_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.logout)],
          centerTitle: true,
          title: const Text('Title'),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Text('This is a text in AppBar'),
          ),
        ),
        body: FirstScreen(),
      ),
    );
  }
}
