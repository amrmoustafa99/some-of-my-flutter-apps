import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled2/modules/bmiResult/BMI_Result_Screen.dart';


class BIMCalc extends StatefulWidget {
  const BIMCalc({Key? key}) : super(key: key);

  @override
  State<BIMCalc> createState() => _BIMCalcState();
}

class _BIMCalcState extends State<BIMCalc> {
  bool ismale=true;
  int weight=40;
  int age=15;
  double height=120;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
      ),
      body:Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             ismale=true;
                           });
                         },
                         child: Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: ismale ? Colors.blue : Colors.grey
                           ),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Icon(
                                 Icons.male,
                                 size: 70,
                               ),
                               SizedBox(
                                 height: 10,
                               ),
                               Text(
                                 'MALE',
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                     SizedBox(
                       width: 20,
                     ),
                     Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          ismale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ismale ? Colors.grey : Colors.blue ,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey
                ),
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
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                            ),
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
                        value: height ,
                        max: 220,
                        min: 80,
                        onChanged: (value){
                           setState(() {
                             height=value;
                           });
                        }
                    )

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
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${weight}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  if(weight==0){
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text("Sorry can't minize more"),
                                    ));
                                  }
                                  else {
                                    weight--;
                                    setState(() {

                                    });
                                  }
                                },
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: (){

                                  weight++;
                                  setState(() {

                                  });

                                },
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:Colors.grey
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             FloatingActionButton(
                               onPressed: (){
                                 if(age==0){
                                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                     content: Text("Sorry can't minize more"),
                                   ));
                                 }
                                 else {
                                   age--;
                                   setState(() {

                                   });
                                 }
                               },
                               mini: true,
                               child: Icon(Icons.remove),
                             ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: (){

                                    age++;
                                    setState(() {

                                    });

                                },
                                mini: true,
                                child: Icon(Icons.add),
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
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: (){
                double res=weight/pow(height/100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => BMIRessultScreen(
                          age: age,
                          isMale:ismale,
                          reslut: res.round(),
                        ))
                    )
                );
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
