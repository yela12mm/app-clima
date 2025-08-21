
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  final Temperatura temperatura;
  const Success({super.key, required this.temperatura});

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
      child: Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("📍 ${temperatura.location?.name ?? ""}",
          style: const TextStyle(fontSize: 22)),
      Text("🌡️ ${temperatura.current?.tempC ?? '--'} °C",
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      Text("${temperatura.current?.condition?.text ?? ""}",
          style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
    ],
  ),),
    );
  }
}