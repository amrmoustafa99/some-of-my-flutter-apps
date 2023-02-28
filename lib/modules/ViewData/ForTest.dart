import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ForTest extends StatefulWidget {
  const ForTest({Key? key}) : super(key: key);

  @override
  State<ForTest> createState() => _ForTestState();
}

class _ForTestState extends State<ForTest> {
  List photos = [];
  var title;
  var urlImag;

  final String zabbixApiEndpoint = 'http://192.168.1.150/api_jsonrpc.php';
  final String username = 'Admin';
  final String password = 'zabbix';

  late List<dynamic> hosts;
  String? authToken = null;
  var interfaceid;
  var hostName;
  var hostIP;

  Future<void> authenticate() async {
    Map<String, dynamic> authRequestJson = {
      "jsonrpc": "2.0",
      "method": "user.login",
      "params": {"user": username, "password": password},
      "id": 1,
      "auth": null
    };

    final http.Response response = await http.post(
      Uri.parse(zabbixApiEndpoint),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(authRequestJson),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> authResponse = jsonDecode(response.body);

      authToken = authResponse['result'];
      // Store the authentication token for future API requests
      print(authResponse);
      print(authToken);
    } else {
      // Handle error

      print("Error");
    }
  }

  Future<void> getHosts() async {
    // Set up the API endpoint URL and authentication credentials

    // Set up the JSON-RPC request payload
    Map<String, dynamic> payload = {
      "jsonrpc": "2.0",
      "method": "host.get",
      "params": {
        "output": ["hostid", "host"],
        "selectInterfaces": ["interfaceid", "ip"]
      },
      "id": 1,
      "auth": "c6dbe29bc23cce24c8a53ab6521fc7fd"
    };

    // Send a POST request to the Zabbix API endpoint with the payload
    http.Response response = await http.post(
      Uri.parse(zabbixApiEndpoint),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(payload),
    );

    // Check the response status code
    if (response.statusCode != 200) {
      throw Exception('Failed to get hosts');
    }

    // Parse the JSON response
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    // Extract the list of hosts from the response
    setState(() {
      hosts = jsonResponse['result'];
      final interfaces = hosts[0]["interfaces"];
      interfaceid = interfaces[0]["interfaceid"];
      hostIP = interfaces[0]["ip"];
      hostName = hosts[0]["host"];

      Fluttertoast.showToast(
          msg: "Authentication Succefully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });

    print(hosts);
  }

  @override
  void initState() {
    authenticate();
    getHosts();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Text(
                '${interfaceid}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                Text('Host:${hostName}'),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'IP:${hostIP}',
                  style: TextStyle(
                    color: Colors.greenAccent,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
