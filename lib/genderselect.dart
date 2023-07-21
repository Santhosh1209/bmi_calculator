// genderselect.dart
import 'package:flutter/material.dart';

// custom widget
class GenderSelect extends StatelessWidget {
  final IconData icon;
  final String gender;
  final bool selected;

  GenderSelect({required this.icon, required this.gender, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          gender,
          style: TextStyle(fontSize: 18.0, color: selected ? Colors.white : Colors.grey),
          // here, 'selected' is a boolean value. if its true, white is selected. Otherwise, grey is selected
        ),
      ],
    );
  }
}
