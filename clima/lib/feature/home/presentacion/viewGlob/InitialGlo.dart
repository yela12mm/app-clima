import 'package:flutter/material.dart';

class InitialGlo extends StatelessWidget {
  const InitialGlo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 255, 199, 116), Color.fromARGB(255, 248, 156, 18)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 60),
            decoration: BoxDecoration(
              color: Colors.orange[50],
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 255, 102, 0).withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(4, 6),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/F.png',
                ),
                const SizedBox(height:2),

                const Text(
                  "SUNRISE",
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 2,
                    color: Color.fromARGB(255, 115, 148, 145),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),

                const Text(
                  "climate",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 67, 83, 81),
                  ),
                ),
                const SizedBox(height: 24),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 188, 87),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 14,
                    ),
                  ),
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: const Text(
                    "Ver tiempo >",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}