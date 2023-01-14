import 'package:flutter/material.dart';

class GenderOption extends StatelessWidget {
  final IconData iconData;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  GenderOption({
    required this.iconData,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isSelected ? Colors.blue : Colors.grey),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 70,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                label.toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
