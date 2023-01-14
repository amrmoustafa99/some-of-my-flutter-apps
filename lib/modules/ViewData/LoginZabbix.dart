import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled2/modules/ViewData/NavBar.dart';
import 'package:untitled2/modules/ViewData/ViewData2.dart';
import 'package:untitled2/shared/components/components.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LoginZabbix extends StatelessWidget {
  var ZabbixUrlController = TextEditingController();
  var UserNameController = TextEditingController();
  var passController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        // leading: Icon(
        //   Icons.menu,
        // ),
        title: Text(
          'Zabbix',
        ),
        // actions: [
        //   IconButton(onPressed: (){
        //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //       content: Text("I'm notifications"),
        //     ));
        //   },
        //       icon: Icon(Icons.notifications,))
        //   ,
        //   IconButton(onPressed: (){
        //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //       content: Text("I'm search"),
        //     ));
        //   },
        //       icon: Icon(Icons.search,)),
        //
        // ],
        // centerTitle: true,
        // elevation: 20,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextLiquidFill(
                  text: 'MobZabbix',
                  waveColor: Colors.blue,
                  boxBackgroundColor: Colors.red!,
                  textStyle: const TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.bold),
                  boxHeight: 120.0,
                ),
                /*Container(
                   child:Image.network('https://miro.medium.com/max/1400/1*aV_UYUi1DoF1LqDdAC7PDQ.png',fit: BoxFit.cover),
                width: 100,
                height: 100,
                ),*/
                SizedBox(
                  height: 60,
                ),
                defualtTextField(
                    controller: ZabbixUrlController,
                    type: TextInputType.text,
                    validate: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Requird ZabbixUrl';
                      }
                      return null;
                    },
                    onTap: () {},
                    lable: 'ZabbixUrl',
                    prefix: Icons.link),
                SizedBox(
                  height: 20,
                ),
                defualtTextField(
                    controller: UserNameController,
                    type: TextInputType.text,
                    validate: (value) {
                      if (value != null && value.isEmpty) {
                        return 'Requird UserName';
                      }
                      return null;
                    },
                    onTap: () {},
                    lable: 'UserName',
                    prefix: Icons.account_circle_outlined),
                SizedBox(
                  height: 20,
                ),
                defualtTextField(
                    controller: passController,
                    type: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value.toString().isEmpty) {
                        return 'Requird Password';
                      }
                    },
                    onTap: () {},
                    lable: 'Password',
                    prefix: Icons.lock_open_outlined,
                    sufix: Icons.remove_red_eye),
                SizedBox(
                  height: 30,
                ),
                defualtButton(
                    function: () {
                      if (formKey.currentState!.validate()) {
                        if ((UserNameController.text == "Admin" &&
                                UserNameController.text.isNotEmpty) &&
                            (passController.text == "zabbix" &&
                                passController.text.isNotEmpty)) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavBarZabbix(key)),
                          );
                        } else {
                          Fluttertoast.showToast(
                              msg: "Username Or Password Not correct",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 5,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        }
                      }
                    },
                    text: 'LOGIN'), //Btn
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an acount?',
                    ),
                    defualtTextButton(
                      text: 'Register Now',
                      function: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Wait for the next sessions my broo"),
                        ));
                      },
                      isBold: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
