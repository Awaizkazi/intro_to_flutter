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
  // String maritalStatus = 'single';
  // * This key will be used to identify the state of the form.
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  String selectedLocation = locations.first;

  String name = '';
  int age = 0;
  String password = '';
  String maritalStatus = 'single';
  bool termsChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
        actions: [Icon(Icons.logout)],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      labelText: 'Enter name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '*required';
                      }
                    },
                    onSaved: (newValue) {
                      setState(() {
                        name = newValue!;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Age',
                      labelText: 'Enter Age',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '*required';
                      }
                    },
                    onSaved: (newValue) {
                      setState(() {
                        age = int.tryParse(newValue!)!;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Enter Password',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) return '*required';
                      if (value.length < 8)
                        return 'Password should me more than 8 characters';
                    },
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
                    onChanged: (String? newValue) {
                      // This is called when the user selects an item.
                      setState(() {
                        selectedLocation = newValue!;
                        // Set state use for the re-build  of the widgets on the screen
                        
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
                            maritalStatus = value!;
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text('Married'),
                          value: 'married',
                          groupValue: maritalStatus,
                          onChanged: (value) {
                            maritalStatus = value!;
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
                        isChecked = value!;
                      });
                    }),
                    title: Text(
                      'Sign up for the newspaper and related articles',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onPressedSubmit(context);
                    },
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onPressedSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print('Name : ' + name);
      print('Age : ' + age.toString());
      print('City : ' + selectedLocation);
      print('Marital Status : ' + maritalStatus);
      print('Password : ' + password);
      print('IsChecked : ' + isChecked.toString());
    }
  }
}
