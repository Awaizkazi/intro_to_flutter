import 'dart:html';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
        actions: [Icon(Icons.logout)],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  labelText: 'Enter name',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Age',
                  labelText: 'Enter Age',
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter Password',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
