import 'package:bloc/bloc.dart';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class HostsCubit  extends Cubit<List<dynamic>> {
  HostsCubit () : super([]);
  static HostsCubit get(context)=>BlocProvider.of(context);

  final String zabbixApiEndpoint = 'http://192.168.1.150/api_jsonrpc.php';
  final String zabbixUsername = 'Admin';
  final String zabbixPassword = 'zabbix';

  Future<String> authenticate() async {
    // Build the request body
    Map<String, dynamic> requestBody = {
      "jsonrpc": "2.0",
      "method": "user.login",
      "params": {
        "user": zabbixUsername,
        "password": zabbixPassword
      },
      "id": 1,
      "auth": null
    };

    // Send the request
    http.Response response = await http.post(Uri.parse(zabbixApiEndpoint),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    // Parse the response
    Map<String, dynamic> responseJson = jsonDecode(response.body);
    String authToken = responseJson['result'];

    return authToken;
  }



  Future<void> getHosts({required String? authToken }) async {
    // Authenticate with the Zabbix server and get the auth token
    String authToken = await authenticate();

    // Build the request body
    Map<String, dynamic> requestBody = {
      "jsonrpc": "2.0",
      "method": "host.get",
      "params": {
        "output": ["hostid", "host"],
        "selectInterfaces": ["interfaceid", "ip"]
      },
      "id": 2,
      "auth": authToken
    };

    // Send the request
    http.Response response = await http.post(Uri.parse(zabbixApiEndpoint),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    // Parse the response
    Map<String, dynamic> responseJson = jsonDecode(response.body);
    List<dynamic> hosts = responseJson['result'];

    // Update the state
    emit(hosts);
  }
}
