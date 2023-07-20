import 'package:flutter/material.dart';

// custom widget to make gender selection easier
class GenderSelect extends StatelessWidget {
  GenderSelect({required this.gender,required this.icon});
  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
          width: 15.0,
        ),
        Text(
          gender,
          style: TextStyle
            (
            fontSize: 20.0,
          ),)
      ],
    );
  }
}