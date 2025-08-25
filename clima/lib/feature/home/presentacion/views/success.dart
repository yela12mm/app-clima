//hay que poner un tamaño al container para que no haya problemas de infinito (que no se visualice el container por el tamaño)
import 'package:clima/feature/home/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Success extends StatelessWidget {
  final Temperatura temperatura; // Recibe el modelo

  const Success({Key? key, required this.temperatura}) : super(key: key);

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
      child: Center(
        
        child:Column(
          children: [
             Text(
              "Ciudad: ${temperatura.name ?? '-'}\n"
              "Región: ${temperatura.region ?? '-'}\n"
              "Temperatura actual: ${temperatura.tempc?.toStringAsFixed(1) ?? '-'}°C",
              textAlign: TextAlign.center,
               style: TextStyle(fontSize: 20),

           ),
           TextButton(
            onPressed: () {
              context.read<BlocBloc>().add(HomeSearchPressed());
            },
            child: const Text('Actualizar tiempo'),
      )
          ],
        )

      ),
    );
  }
}

