import 'package:flutter/material.dart';

import 'ViewData2.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? _zabbixUrl;
  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zabbix Mobile App'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Zabbix URL'),
              validator: (value) {
                if (value.toString().isEmpty) {
                  return 'Please enter the Zabbix URL';
                }
                return null;
              },
              onSaved: (value) => _zabbixUrl = value,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
              validator: (value) {
                if (value.toString().isEmpty) {
                  return 'Please enter the username';
                }
                return null;
              },
              onSaved: (value) => _username = value,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) {
                if (value.toString().isEmpty) {
                  return 'Please enter the password';
                }
                return null;
              },
              onSaved: (value) => _password = value,
            ),
            IconButton(
              icon: Icon(Icons.login),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        zabbixUrl: _zabbixUrl,
                        username: _username,
                        password: _password,
                      ),
                    ),
                  );
                }
              },
            )
,
          ],
        ),
      ),
    );
  }
}
