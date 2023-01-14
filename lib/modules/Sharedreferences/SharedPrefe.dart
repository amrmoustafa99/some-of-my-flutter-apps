import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled2/modules/Sharedreferences/Sharedprefe2.dart';
import 'package:untitled2/shared/components/components.dart';


class SharedPrefe extends StatelessWidget {
  const SharedPrefe({Key? key}) : super(key: key);

SavePrefe() async {
  SharedPreferences prefe=await SharedPreferences.getInstance();
  prefe.setString('name', 'Amr');
  print('Success');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('SharedPreferences'),
      ),
      body: Column(
        children: [
          defualtButton(
              function: () async{
              // await SavePrefe();
               Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedPrefe2()));
              },
              text:'press'),

        ],
      ),


    );
  }
}
