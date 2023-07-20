import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderselect.dart';
import 'reusablecard.dart';
void main() {
  runApp( bmi()
  );
}
class bmi extends StatelessWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21), // get these values from color zilla
        scaffoldBackgroundColor: Color(0xFF0A0E21)
      ),
      home: page(),
    );
  }
}

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Want cool UI designs? Go to dribble!
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xF1D1E33),
                    cardChild: GenderSelect(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    )
                ),
                ),
                Expanded(child:
                ReusableCard(
                  colour: Color(0xF1D1E33),
                    cardChild: GenderSelect(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    )
                )
                ),
        ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xF1D1E33),
            ),
          ),
          Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: Color(0xF1D1E33),
                )
              ),
              Expanded(child:
              ReusableCard(
                colour: Color(0xF1D1E33),
              )
              ),
            ],
          ),
          ),
        ],
      )
    );
  }
}


