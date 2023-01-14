import 'package:flutter/material.dart';
import 'package:untitled2/modules/ViewData/ForTest.dart';
import 'package:untitled2/modules/ViewData/LoginZabbix.dart';
import 'package:untitled2/modules/ViewData/Problems.dart';
import 'package:untitled2/modules/ViewData/ViewData.dart';
import 'package:untitled2/modules/ViewData/ViewData2.dart';

import 'Notifications.dart';

class NavBarZabbix extends StatefulWidget {

  NavBarZabbix(Key? key) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();




}

class _MyHomePageState extends State<NavBarZabbix> {

  late MyHomePage myHomePage;
  late LoginZabbix loginZabbix;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[  MyHomePage(zabbixUrl: 'http://192.168.1.150/api_jsonrpc.php', username: 'Admin', password: 'zabbix'),Notifications(),   Problems(),  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    AppBarTheme(
      backgroundColor: Colors.red,

    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zabbix'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.device_hub_sharp),
            label:'Hosts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report_problem),
            label: ' Problem',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}