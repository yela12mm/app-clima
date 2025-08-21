import 'package:clima/feature/home/bloc/bloc_bloc.dart';
import 'package:clima/feature/home/cubit/cubit_cubit.dart';
import 'package:clima/feature/home/models/modeloPRO.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:clima/feature/home/presentacion/page/fail.dart';
import 'package:clima/feature/home/presentacion/page/home.dart';
import 'package:clima/feature/home/presentacion/page/load.dart';
import 'package:clima/feature/home/presentacion/viewGlob/successGlo.dart';
import 'package:clima/feature/home/presentacion/views/failure.dart';
import 'package:clima/feature/home/presentacion/views/loading.dart';
import 'package:clima/feature/home/presentacion/views/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BlocBloc(temperatura: Temperatura())),
        BlocProvider(create: (_) => HomeCubit(pronostico: Pronostico())),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clima App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Column(
          children: [
            BlocBuilder<BlocBloc,BlocState>(
              builder: (context, state) {
                if(state is BlocLoading){
                  return  Loading();
                }
                else if (state is BlocInitial) {
                  return Success(temperatura: state.current!);
                } else if (state is BlocFailure) {
                  return  Failure();

                }
            
              },
            ),
            BlocBuilder<HomeCubit, CubitState>(
              builder: (context, state) {
                if(state is BlocLoading){
                  return  Load();
                }
                else if (state is BlocInitial) {
                  return Home(pronostico: state.forecast!);
                } else if (state is BlocFailure) {
                  return  Fail();

                }
            
              },
            )
          ],
        )
      ),
    );
  }
}
