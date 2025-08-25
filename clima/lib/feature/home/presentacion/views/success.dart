//hay que poner un tamaño al container para que no haya problemas de infinito (que no se visualice el container por el tamaño)
import 'package:clima/feature/home/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Success extends StatelessWidget {
  final Temperatura temperatura;

  const Success({Key? key, required this.temperatura}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 450,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(0, 255, 202, 116),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        
        child:Column(
          
          children: [
            SizedBox(height: 50),
             Text(
              "${temperatura.tempc?.toStringAsFixed(1) ?? '-'}°C",

              
              textAlign: TextAlign.center,
               style: GoogleFonts.arimo(fontSize: 67, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255)),

           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
              "${temperatura.name ?? '-'}\n ",
              
              textAlign: TextAlign.center,
               style: GoogleFonts.arimo(fontSize: 17, color: Color.fromARGB(255, 255, 255, 255)),

           ),
            Text(
              "/""${temperatura.region ?? '-'}\n",
              
              textAlign: TextAlign.center,
               style: GoogleFonts.arimo(fontSize: 17, color: Color.fromARGB(255, 255, 255, 255)),

           )
            ],
           ),
           TextButton(
            onPressed: () {
              
              context.read<BlocBloc>().add(HomeSearchPressed());
            },
            child: const Text('Actualizar tiempo'
            , style: TextStyle(fontSize: 14, color: Color.fromARGB(192, 90, 98, 138))),
      )
          ],
        )

      ),
    );
  }
}


