import 'dart:ui';

import 'package:flutter/material.dart';

List<String> locations = [
  'Mumbai',
  'India',
  'Singapore',
  'Dubai',
  'Saudi Arabia'
];

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String maritalStatus = 'single';
  bool isChecked = false;
  String dropdownValue = locations.first;
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
                obscureText: true,
              ),
              DropdownButton(
                hint: Text('Please choose the city you live in'),
                items: locations.map((String location) {
                  // ! Here location is act like a var which Stores Dropdown item which i select
                  return DropdownMenuItem(
                    child: Text(location),
                    value: location,
                  );
                }).toList(),
                onChanged: (String? location) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = location!;
                  });
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text('Single'),
                      value: 'single',
                      groupValue: maritalStatus,
                      onChanged: (value) {
                        isChecked = !isChecked;
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text('Married'),
                      value: 'married',
                      groupValue: maritalStatus,
                      onChanged: (value) {
                        isChecked = !isChecked;
                      },
                    ),
                  ),
                ],
              ),
              CheckboxListTile(
                value: isChecked,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: ((value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }),
                title: Text(
                  'Sign up for the newspaper and related articles',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
