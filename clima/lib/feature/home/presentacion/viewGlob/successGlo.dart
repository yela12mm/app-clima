import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Scaffold Success() {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
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
      title: Text(
    'Clima',
        style: GoogleFonts.nunito(
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
    ),

  );
}

