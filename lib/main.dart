import 'package:flutter/material.dart';
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
// custom widget created for each container
class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});
  // required is used to ensure that colour must always be given as a parameter when calling an object of this class
  // by doing this, we can customize the colour of every unique ResuableCard widget

  // Below, 'final' is used
  final Color colour; // Color property of this class
  // This is to ensure that the value of colour can only be initialized when calling an object and not otherwise
  @override
  Widget build(BuildContext context) {
    return Container
      (
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(10.0)
        )
    );
  }
}


