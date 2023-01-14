import 'package:flutter/cupertino.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Center(child: Text('Notifications', style: TextStyle(fontWeight: FontWeight.bold),))
      ,

    );
  }
}
