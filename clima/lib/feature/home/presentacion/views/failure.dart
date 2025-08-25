import 'package:flutter/material.dart';

class Failure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 450,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 202, 116),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Icon(
          Icons.report_gmailerrorred,
          size: 50,
          color: Color.fromARGB(255, 255, 170, 0),
        ),
      ),
    );
  }
}
