import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'genderselect.dart';
import 'reusablecard.dart';

void main() {
  runApp(bmi());
}

class bmi extends StatelessWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
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
  String selectedGender = ''; // Variable to store the selected gender
  double height = 150.0; // used in the slider for height
  int age = 25;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'MALE';
                          print('Male card tapped');
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == 'MALE' ? Color(0xFFF7E79E) : Color(0xF1D1E33),
                        cardChild: GenderSelect(
                          icon: FontAwesomeIcons.mars,
                          gender: 'MALE',
                          selected: selectedGender == 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = 'FEMALE';
                          print('Female card tapped');
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == 'FEMALE' ? Color(0xFFF7E79E) : Color(0xF1D1E33),
                        cardChild: GenderSelect(
                          icon: FontAwesomeIcons.venus,
                          gender: 'FEMALE',
                          selected: selectedGender == 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xF1D1E33),
    cardChild: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'HEIGHT',
    style: TextStyle(
    fontSize: 20.0,
    ),
    ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            height.toStringAsFixed(0), // Display the height value
            style: TextStyle(
              fontSize: 40.0, // Increase the font size
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'cm', // Display 'cm' next to the height value
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
      Slider(
        value: height,
        min: 100.0,
        max: 220.0,
        onChanged: (newValue) {
          setState(() {
            height = newValue;
          });
        },
      ),
    ],
    ),
            ),
          ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xF1D1E33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            weight.toString(), // Display the weight value
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--; // Decrement weight by 1
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++; // Increment weight by 1
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xF1D1E33),
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            age.toString(), // Display the age value
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--; // Decrement age by 1
                                  });
                                },
                                icon: Icon(Icons.remove),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++; // Increment age by 1
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}


