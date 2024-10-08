import 'package:flutter/material.dart';

class DropdownCheckboxExample extends StatefulWidget {
  @override
  _DropdownCheckboxExampleState createState() => _DropdownCheckboxExampleState();
}

class _DropdownCheckboxExampleState extends State<DropdownCheckboxExample> {
  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
   String? selectedOption;
  bool isChecked = false;
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Checkbox Example'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Selected Option: $selectedOption'),
            trailing: Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
          SizedBox(
            height: 47,
            width: double.infinity,
            child: DropdownButtonFormField<String>(
              value: selectedOption,
              items: dropdownItems.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: ListTile(
                    title: Text(option),
                    trailing: Checkbox(
                      value: selectedOption == option ? isChecked : false,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = option;
                          isChecked = value!;
                          textFieldController.text = selectedOption!;
                        });
                      },
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                  textFieldController.text = selectedOption!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Select an option',
              ),
            ),
          ),
          TextField(
            controller: textFieldController,
            decoration: InputDecoration(
              labelText: 'Text Field',
            ),
          ),
        ],
      ),
    );
  }
}


