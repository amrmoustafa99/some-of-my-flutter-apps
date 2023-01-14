import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<dynamic> pages = [];
  var names;
  late String auth;

  @override
  void initState() {
    super.initState();
    authenticate().then((value) {
      auth = value;
      getDashboard(auth: auth).then((value) {
        setState(() {
          pages = value;
        });
      });
    });
  }

  Future<String> authenticate({
    @required String? zabbixUrl,
    @required String? username,
    @required String? password,
  }) async {
    // Build the request body
    Map<String, dynamic> requestBody = {
      "jsonrpc": "2.0",
      "method": "user.login",
      "params": {"user": "Admin", "password": "zabbix"},
      "id": 1,
      "auth": null
    };

    // Send the request
    var response = await http.post(
      Uri.parse('http://192.168.1.150/api_jsonrpc.php'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    // Parse the response
    Map<String, dynamic> responseJson = jsonDecode(response.body);
    print(responseJson);
    return responseJson['result'];
  }

  Future<List<dynamic>> getDashboard({
    @required String? zabbixUrl,
    required String auth,
  }) async {
    // Build the request body
    Map<String, dynamic> requestBody = {
      "jsonrpc": "2.0",
      "method": "dashboard.get",
      "params": {
        "output": "extend",
        "selectPages": "extend",
        "selectUsers": "extend",
        "selectUserGroups": "extend",
        "dashboardids": ["1", "2"]
      },
      "auth": "14d77e77d8e3fe4f8630444d1da3ca34",
      "id": 1
    };

    // Send the request
    var response = await http.post(
      Uri.parse('http://192.168.1.150/api_jsonrpc.php'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    // Parse the response
    Map<String, dynamic> responseJson = jsonDecode(response.body);
    List<dynamic> pages = responseJson['result'][0]['pages'];
    // print(pages);
    names =
        responseJson['result'][0]['pages'].map((page) => page['name']).toList();
    print("namess==" + names);
    return names;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(names[index]),
            );
          },
        ));
  }
}
