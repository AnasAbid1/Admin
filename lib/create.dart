import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String _selectedItem = "Karachi";

  List<String> _dropdownItems = ['Karachi','Lahore','Islamabad'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
        value: _selectedItem,
        items: _dropdownItems.map((String item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedItem = value!;
          });
        },
        hint: Text('Select a City'),
      ),
    );
  }
}
