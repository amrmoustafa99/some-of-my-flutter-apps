import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled2/modules/bmiCalc/GenderOption.dart';

import 'WeightAndAge.dart';
import 'bmiResult/BMI_Result_Screen.dart';

class BIMCalc extends StatefulWidget {
  const BIMCalc({Key? key}) : super(key: key);

  @override
  State<BIMCalc> createState() => _BIMCalcState();
}

class _BIMCalcState extends State<BIMCalc> {
  bool ismale = true;
  int weight = 40;
  int age = 15;
  double height = 120;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  GenderOption(
                    onTap: () {
                      setState(() {
                        ismale = true;
                      });
                    },
                    iconData: Icons.male,
                    isSelected: ismale,
                    label: "Male",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GenderOption(
                    onTap: () {
                      setState(() {
                        ismale = false;
                      });
                    },
                    iconData: Icons.female,
                    isSelected: !ismale,
                    label: "Female",
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  WeightAndAge(
                    label: 'WEIGHT',
                    value: weight,
                    onDecrement: (value) {
                      if (value == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Sorry can't minimize more"),
                          ),
                        );
                      } else {
                        setState(() {
                          weight--;
                        });
                      }
                    },
                    onIncrement: (value) {
                      setState(() {
                        weight++;
                      });
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  WeightAndAge(
                    label: 'AGE',
                    value: age,
                    onDecrement: (value) {
                      if (value == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Sorry can't minimize more"),
                          ),
                        );
                      } else {
                        setState(() {
                          age--;
                        });
                      }
                    },
                    onIncrement: (value) {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                double res = weight / pow(height / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => BMIRessultScreen(
                              weight: weight,
                              height: height.toInt(),
                              age: age,
                              isMale: ismale,
                              reslut: res.round(),
                            ))));
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
