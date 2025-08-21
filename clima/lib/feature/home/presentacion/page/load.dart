
import 'package:flutter/material.dart';

class Load extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 450,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 132, 170, 124),
        borderRadius: BorderRadius.circular(20),
      
      ),
      child: Center(
        child: CircularProgressIndicator(
          color: const Color.fromARGB(255, 57, 74, 54), 
          strokeWidth: 4,       
        ),
      ),
    );
  }
}