import 'package:flutter/cupertino.dart';

import 'Cubit.dart';
import 'ViewData2.dart';

abstract class MyHomePageState extends State<MyHomePage> {
  String? authToken;
  late HostsCubit hostsCubit;

  @override
  void initState() {
    super.initState();

    // Authenticate with the Zabbix server and get the auth token
    hostsCubit.authenticate().then((result) {
      setState(() {
        authToken = result;
      });
      hostsCubit = HostsCubit();
      hostsCubit.getHosts(authToken: authToken);
    });
  }

}