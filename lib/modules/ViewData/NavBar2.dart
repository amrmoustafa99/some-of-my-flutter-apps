import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/modules/ViewData/LoginZabbix.dart';
import 'package:untitled2/modules/ViewData/LoginZabbix.dart';

import 'LoginZabbix.dart';
import 'LoginZabbix.dart';
import 'LoginZabbix.dart';
import 'ViewData.dart';
import 'ViewData2.dart';

class NavBar2 extends StatefulWidget {
  const NavBar2({Key? key}) : super(key: key);

  @override
  State<NavBar2> createState() => _NavBar2State();
}

class _NavBar2State extends State<NavBar2> {
  late LoginZabbix loginZabbix;
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[   MyHomePage() ,    Text(      'Index 1: Business',      style: optionStyle,    ),    Text(      'Index 2: School',      style: optionStyle,    ),  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}