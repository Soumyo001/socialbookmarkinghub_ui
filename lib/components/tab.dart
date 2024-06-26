import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String text;
  final Color color;
  const MyTab({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        padding: const EdgeInsets.all(21),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: color,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
