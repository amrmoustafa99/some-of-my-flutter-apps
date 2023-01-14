

import 'package:flutter/material.dart';
import 'package:untitled2/shared/components/components.dart';

class LoginScreen extends StatelessWidget {

var emailController=TextEditingController();
var passController=TextEditingController();
var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'LoginScreen',
        ),
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("I'm notifications"),
            ));
          },
              icon: Icon(Icons.notifications,))
          ,
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("I'm search"),
            ));
          },
              icon: Icon(Icons.search,)),

        ],
        centerTitle: true,
        elevation: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: formKey,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                      fontWeight: FontWeight. bold,
                  ),
                ),
                SizedBox(
                  height:60 ,
                ),
                defualtTextField(controller: emailController, type: TextInputType.emailAddress,
                    validate: (value){
                      if(value != null && value.isEmpty){
                        return 'Requird Email';
                      }
                      return null;
                    },
                    onTap: (){},
                    lable: 'Email', prefix:Icons.email_outlined ),
                SizedBox(
                  height: 20,
                ),
                defualtTextField(controller: passController, type: TextInputType.visiblePassword,
                    validate: (value){
                       if(value.toString().isEmpty){
                         return 'Requird Password';
                       }
                    },
                    onTap: (){},
                    lable: 'Password', prefix: Icons.lock_open_outlined, sufix: Icons.remove_red_eye),
                SizedBox(
                  height: 30,
                ),
                defualtButton(
                   function: (){
                     if(formKey.currentState!.validate()){
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                         content: Text('${emailController.text} ${passController.text}'),
                       ));
                     }

                   },
                    text: 'LOGIN'),//Btn
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
                       function: (){
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
    );
  }
}
