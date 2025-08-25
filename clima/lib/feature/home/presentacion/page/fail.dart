//hay que poner un tamaño al container para que no haya problemas de infinito (que no se visualice el container por el tamaño)
import 'package:flutter/material.dart';

class Fail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 450,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(68, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Icon(
          Icons.report_gmailerrorred,
          size: 50,
          color: const Color.fromARGB(255, 19, 96, 184),
        ),
      ),
    );
  }
}
