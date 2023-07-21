import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmiResult;

  ResultPage({required this.bmiResult});

  String getBMIStatus() {
    if (bmiResult < 15) {
      return 'Severely Underweight';
    } else if (bmiResult >= 15 && bmiResult < 18) {
      return 'Underweight';
    } else if (bmiResult >= 18 && bmiResult < 25) {
      return 'Fit';
    } else if (bmiResult >= 25 && bmiResult < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  String getBMIMessage() {
    if (bmiResult < 15) {
      return 'You are severely underweight. Please consult a doctor.';
    } else if (bmiResult >= 15 && bmiResult < 18) {
      return 'You are underweight. Try to gain some healthy weight.';
    } else if (bmiResult >= 18 && bmiResult < 25) {
      return 'Congratulations! You are fit.';
    } else if (bmiResult >= 25 && bmiResult < 30) {
      return 'You are overweight. Try to lose some weight.';
    } else {
      return 'You are obese. Please consult a doctor and consider losing weight for a healthy lifestyle.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULTS'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI: ${bmiResult.toStringAsFixed(1)}',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              getBMIStatus(),
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              getBMIMessage(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the main page
              },
              child: Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
