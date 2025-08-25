//hay que poner un tamaño al container para que no haya problemas de infinito (que no se visualice el container por el tamaño)
import 'package:clima/feature/home/cubit/cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:clima/feature/home/models/modeloPRO.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 

class Home extends StatelessWidget {
  final List<Pronostico> pronostico;

  const Home({Key? key, required this.pronostico}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 450,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 132, 170, 124),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pronostico.length,
              itemBuilder: (context, index) {
                final p = pronostico[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Fecha: ${p.date ?? '-'}",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Máx: ${p.maxtempC?.toStringAsFixed(1) ?? '-'}°C",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Mín: ${p.mintempC?.toStringAsFixed(1) ?? '-'}°C",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Condición: ${p.conditionText ?? '-'}",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: Image.network(
                          "https:${p.conditionIcon ?? ''}",
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 24),
                        ),
                      ),
                    ],
                  ),
                );
              },
              
            ),
          ),
          TextButton(
            onPressed: () {
              final bloc = context.read<CubitCubit>();
              bloc.verTiempo();
            },
            child: const Text('Actualizar tiempo'),
          ),
        ],
      ),

    );
  }
}