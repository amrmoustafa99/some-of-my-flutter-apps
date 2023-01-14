import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled2/modules/Business/Business.dart';
import 'package:untitled2/modules/HomeScreen/HomeScreen.dart';
import 'package:untitled2/modules/Science/Science.dart';
import 'package:untitled2/modules/ViewData/ViewData.dart';



class MyHomePage extends StatefulWidget {
  String? zabbixUrl ;
  String? username ;
  String? password;

 MyHomePage({Key? key, @required this.zabbixUrl, @required this.username, @required this.password,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<dynamic> hosts =[];
// Function to authenticate with the Zabbix server and get an auth token
  Future<String> authenticate({@required String? zabbixUrl, @required String? username, @required String? password,}) async {
    // Build the request body
    Map<String, dynamic> requestBody = {
      "jsonrpc": "2.0",
      "method": "user.login",
      "params": {
        "user": username,
        "password": password
      },
      "id": 1,
      "auth": null
    };

    // Send the request
   var  response = await http.post(Uri.parse(zabbixUrl!),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    // Parse the response
    Map<String, dynamic> responseJson = jsonDecode(response.body);
    print(responseJson);
    return responseJson['result'];


  }

// Function to retrieve data about hosts
  Future<List<dynamic>> getHosts({@required String? zabbixUrl}) async {
    // Build the request body
    Map<String, dynamic> requestBody = {
      "jsonrpc": "2.0",
      "method": "host.get",
      "params": {
        "output": ["hostid", "host"],
        "selectInterfaces": ["interfaceid", "ip"]
      },
      "id": 2,
      "auth": 'c6dbe29bc23cce24c8a53ab6521fc7fd'
    };

    // Send the request
    http.Response response = await http.post(Uri.parse(zabbixUrl!),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    // Parse the response
    Map<String, dynamic> responseJson = jsonDecode(response.body);
    print(responseJson);
    return responseJson['result'];
  }

@override
void initState() {
  print("1111   "'${hosts} ${widget.zabbixUrl} \' ${widget.username}');
  super.initState();
  // to put parameters in authenticate function
  authenticate(
  zabbixUrl: widget.zabbixUrl,
  username: widget.username,
  password: widget.password,
  );

  // to put parameters in getHosts function and get return result as a hosts
    getHosts(zabbixUrl: widget.zabbixUrl).then((result) {
      setState(() {
        hosts = result;
        print("hiii   "'${hosts}');
      });
    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: hosts.length,
        itemBuilder: (context, index) {
          String hostName = hosts[index]['host'];
          String hostIP = hosts[index]['interfaces'][0]['ip'];
          String interfaceid = hosts[index]['interfaces'][0]['interfaceid'];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Text(
                    '$interfaceid',
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
                        'Host: $hostName'
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'IP: $hostIP',
                      style: TextStyle(
                        color:Colors.greenAccent,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
