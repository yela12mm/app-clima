import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Scaffold Success() {
  return Scaffold(
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
    backgroundColor: Color(0xFFFFB365),
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
    body: Stack(
      children: [
        Positioned.fill(
          child:        Image.asset(
          "assets/images/imgF.jpg"

        )
        )

      ],
    ),

  );
}

