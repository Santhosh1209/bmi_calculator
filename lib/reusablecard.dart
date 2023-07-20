import 'package:flutter/material.dart';
// custom widget created for each container
class ReusableCard extends StatelessWidget {
ReusableCard({required this.colour,this.cardChild});
// required is used to ensure that colour must always be given as a parameter when calling an object of this class
// by doing this, we can customize the colour of every unique ResuableCard widget

final Color colour; // Color property of this class
// Here, 'final' is used to ensure that the value of colour can only be initialized when calling an object and not otherwise
final Widget? cardChild; // child property of this class ; ? is used to allow null values
@override
Widget build(BuildContext context) {
return Container
(
child: cardChild,
margin: EdgeInsets.all(15.0),
decoration: BoxDecoration(
color: Color(0xFF1D1E33),
borderRadius: BorderRadius.circular(10.0)
)
);
}
}
