import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  const Done({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Done',
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
    );
  }
}
