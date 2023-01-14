import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled2/shared/components/components.dart';

class SharedPrefe2 extends StatefulWidget {
  const SharedPrefe2({Key? key}) : super(key: key);

  @override
  State<SharedPrefe2> createState() => _SharedPrefe2State();
}

class _SharedPrefe2State extends State<SharedPrefe2> {

  String? username='';
  GetPrefe() async {
    SharedPreferences prefe=await SharedPreferences.getInstance();

    setState((){
      username=prefe.getString('name');
    });



    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('SharedPrefe2'),
      ),
      body: Column(
        children: [
          defualtButton(function: (){
            GetPrefe();
            Fluttertoast.showToast(
                msg: "${username}",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 6,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, text: 'press to view')
        ],
      ),

    );
  }
}
