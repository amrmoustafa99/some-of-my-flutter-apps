import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeightAndAge extends StatefulWidget {
  final String label;
  final int value;
  final Function(int) onDecrement;
  final Function(int) onIncrement;

  WeightAndAge({
    required this.label,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  _WeightAndAgeState createState() => _WeightAndAgeState();
}

class _WeightAndAgeState extends State<WeightAndAge> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.label,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${widget.value}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    widget.onDecrement(widget.value);
                  },
                  mini: true,
                  child: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  onPressed: () {
                    widget.onIncrement(widget.value);
                  },
                  mini: true,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
