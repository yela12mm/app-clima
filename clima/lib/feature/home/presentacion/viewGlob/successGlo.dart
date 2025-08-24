import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:clima/feature/home/presentacion/page/home.dart';
import 'package:clima/feature/home/presentacion/views/success.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessGlo extends StatelessWidget {
  final Temperatura temperatura;
  const SuccessGlo({Key? key, required this.temperatura}) : super(key: key);  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 255, 229, 203),
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xFFFFB365),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),

          label: 'User',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: 'search',
        ),
      ],
    ),
    
    appBar: AppBar(
    backgroundColor: Color.fromARGB(255, 255, 180, 106),
    title: Text(
    'Climate',
        style: GoogleFonts.arimo(
          textStyle: const TextStyle(
            

            fontSize: 25,
           
          ),
        ),
      ),
      actions: [
        SizedBox(width: 10),
        IconButton(
          iconSize: 40,
    
          icon: Icon(Icons.settings_outlined),
          onPressed: () {},
        ),
        SizedBox(width: 10),
      ],
    ),


   body:SingleChildScrollView(
      child: Center(
        child:Column(
    
          children: [
            const SizedBox(height: 24),
            Success(temperatura:temperatura),
            const SizedBox(height: 10),
            Home()
          ],
        ),

      ),
    )


  );



  }
}