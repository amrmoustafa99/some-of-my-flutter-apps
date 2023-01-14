import 'package:flutter/material.dart';

class BMIRessultScreen extends StatelessWidget {
  final bool isMale;
  final int reslut;
  final int age;


  BMIRessultScreen({required this.isMale, required this.reslut, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text(
            'BMI Result',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            Text(
              'Result : ${reslut}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}
