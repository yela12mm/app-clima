
import 'package:clima/feature/home/models/modeloPRO.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Detalles extends StatelessWidget {
  final List<Pronostico> pronostico;

  const Detalles({Key? key, required this.pronostico}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Color.fromARGB(148, 21, 143, 204), Color.fromARGB(255, 180, 186, 194)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      ),
      child:Scaffold(

      backgroundColor: Color.fromARGB(0, 173, 161, 148),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 255, 181, 106),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () => Navigator.pop(context),
       )
      ),
      body: Container(
        height: 500,
        width: 450,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
        color: const Color.fromARGB(68, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount:pronostico.length,
              itemBuilder: (context, index) {
                final p = pronostico[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: Image.network(
                          "https:${p.conditionIcon ?? ''}",
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 24),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "${p.date ?? '-'}",
                          overflow: TextOverflow.ellipsis,
                          style:GoogleFonts.arimo(fontSize: 17, color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),

                      Expanded(
                        flex: 3,
                        child: Text(
                          "${p.conditionText ?? '-'}",
                          style:GoogleFonts.arimo(fontSize: 17, color: Color.fromARGB(255, 255, 255, 255)),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "${p.maxtempC?.toStringAsFixed(1) ?? '-'}"
                          "/"
                          "${p.mintempC?.toStringAsFixed(1) ?? '-'}°C",
                          style:GoogleFonts.arimo(fontSize: 17, color: Color.fromARGB(255, 255, 255, 255)),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                    ],
                  ),
                );
              },
              
            ),
            
          ),
        

          
        ],
      ),

      )
      )
    
    );
   }
  }