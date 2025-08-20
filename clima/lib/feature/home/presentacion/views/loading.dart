
import 'package:flutter/material.dart';

class   Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 450,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 202, 116),
        borderRadius: BorderRadius.circular(20),
      
      ),
      child: Center(  
        child: CircularProgressIndicator(
          color: const Color.fromARGB(255, 255, 153, 0), 
          strokeWidth: 4,       
        ),
      ),
    );
  }
} 