import 'package:flutter/material.dart';
import 'package:untitled2/modules/ShopScreen/ShopScreen.dart';

class MyNavigationBar extends StatefulWidget {
 // MyNavigationBar ({required Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 7.5),
            child: PhysicalModel(
              color: Colors.white,
              shape:BoxShape.rectangle ,
              elevation: 1,
              borderRadius: BorderRadius.circular(5),
              child: TextFormField(
                cursorColor: Colors.black,
                keyboardType:TextInputType.text,
                decoration: new InputDecoration(

                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    icon: Icon(Icons.search_rounded,color: Colors.grey,)
                    ,hintText: "Search"),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 10, top: 15),
              child: Icon(Icons.favorite,color: Colors.grey,),

            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 10, top: 15),
              child: Icon(Icons.notifications,color: Colors.grey,),

            ),


          ],


        ),
      body: ShopScreen(),

      bottomNavigationBar: Container(
        height: 50,
        child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(

                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.grey
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                  backgroundColor: Colors.grey
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.grey,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 20,
            onTap: _onItemTapped,
            elevation: 5
        ),
      ),
    );
  }
}