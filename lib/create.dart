import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String _selectedItem = "Item 1";

  List<String> _dropdownItems = ['Item 1','Item 2','Item 3'];

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
        hint: Text('Select an item'),
      ),
    );
  }
}
