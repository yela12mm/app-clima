//hay que poner un tamaño al container para que no haya problemas de infinito (que no se visualice el container por el tamaño)
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
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
      child: Center(child: Text("Clima")),
    );
  }
}