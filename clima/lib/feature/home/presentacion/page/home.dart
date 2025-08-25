//hay que poner un tamaño al container para que no haya problemas de infinito (que no se visualice el container por el tamaño)
import 'package:clima/feature/home/cubit/cubit_cubit.dart';
import 'package:clima/feature/home/presentacion/page/detalles.dart';
import 'package:flutter/material.dart';
import 'package:clima/feature/home/models/modeloPRO.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final List<Pronostico> pronostico;
  final Uri _url = Uri.parse(
    'https://www.accuweather.com/es/co/barranquilla/107123/weather-forecast/107123?city=barranquilla',
  );

  Home({Key? key, required this.pronostico, Uri? url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 450,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(68, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              final bloc = context.read<CubitCubit>();
              bloc.verDetalles();
            },
            child: Text(
              "Ver detalles",
              style: TextStyle(color: const Color.fromARGB(255, 102, 115, 122)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pronostico.length >= 3 ? 3 : pronostico.length,
              itemBuilder: (context, index) {
                final p = pronostico[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: Image.network(
                          "https:${p.conditionIcon ?? ''}",
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error, size: 24),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "${p.date ?? '-'}",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.arimo(
                            fontSize: 17,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 3,
                        child: Text(
                          "${p.conditionText ?? '-'}",
                          style: GoogleFonts.arimo(
                            fontSize: 17,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "${p.maxtempC?.toStringAsFixed(1) ?? '-'}"
                          "/"
                          "${p.mintempC?.toStringAsFixed(1) ?? '-'}°C",
                          style: GoogleFonts.arimo(
                            fontSize: 17,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final state = context.read<CubitCubit>().state;
              if (state is CubitHome) {
                //el estado sea CubitHome se pondra navegar hacia detalle, si no state no es Cubit home mustra un error
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Detalles(pronostico: state.forecast!),
                  ),
                );
              }
            },
            child: const Text(
              'Ver pronostico completo',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(192, 255, 255, 255),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(173, 108, 194, 243),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
