

import 'package:flutter/material.dart';

class LoadingGlo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 255, 229, 203),

   body: Center(
      child: CircularProgressIndicator(
        color: const Color.fromARGB(255, 255, 153, 0), 
          strokeWidth: 4,       
        ),
      ),
   );
  }
}