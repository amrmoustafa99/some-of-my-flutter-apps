
import 'package:flutter/material.dart';

import '../../models/users/user_model.dart';

class UsersScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    List<UserModel> users=[
      UserModel(id:1,name: '55',number: '555'),
      UserModel(id: 2, name: 'amr', number: '0120022545'),
      UserModel(id: 1, name: 'amr moustafa', number: '01060408296'),
      UserModel(id: 1, name: 'Ahmed Moustafa', number: '012058558'),
      UserModel(id: 1, name: 'Mohamed Moustafa', number: '01585888'),
      UserModel(id: 1, name: 'ALi Mohamed', number: '01005588558'),
      UserModel(id: 1, name: 'Yasser Ahmed', number: '01006988856'),
      UserModel(id: 1, name: 'Mo Salah', number: '0116988565'),
      UserModel(id: 1, name: 'amr moustafa', number: '01060408296'),
      UserModel(id: 1, name: 'Ahmed Moustafa', number: '012058558'),
      UserModel(id: 1, name: 'Mohamed Moustafa', number: '01585888'),
      UserModel(id: 1, name: 'ALi Mohamed', number: '01005588558'),
      UserModel(id: 1, name: 'Yasser Ahmed', number: '01006988856'),
      UserModel(id: 1, name: 'Mo Salah', number: '0116988565'),
      UserModel(id: 1, name: 'amr moustafa', number: '01060408296'),
      UserModel(id: 1, name: 'Ahmed Moustafa', number: '012058558'),
      UserModel(id: 1, name: 'Mohamed Moustafa', number: '01585888'),
      UserModel(id: 1, name: 'ALi Mohamed', number: '01005588558'),
      UserModel(id: 1, name: 'Yasser Ahmed', number: '01006988856'),
      UserModel(id: 1, name: 'Mo Salah', number: '0116988565'),

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body:
        ListView.separated(
            itemBuilder: (context, index)=>buildItem(users[index]),
            separatorBuilder: (context ,index)=>Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20,
                end: 20
              ),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
            ),
            itemCount:users.length)
    );
  }

  Widget buildItem(UserModel user){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(

        children: [
          CircleAvatar(
            radius: 20,
            child: Text(
              '${user.id}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  '${user.name}'
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '${user.number}',
                style: TextStyle(
                  color:Colors.greenAccent,
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
