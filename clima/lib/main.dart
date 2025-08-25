import 'package:clima/feature/home/bloc/bloc_bloc.dart';
import 'package:clima/feature/home/cubit/cubit_cubit.dart';


import 'package:clima/feature/home/presentacion/page/home.dart';
import 'package:clima/feature/home/presentacion/page/load.dart';
import 'package:clima/feature/home/presentacion/views/loading.dart';
import 'package:clima/feature/home/presentacion/views/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          
          create: (context) {
            final bloc = BlocBloc();
            bloc.add(HomeSearchPressed());
            return bloc;
          },
        ),
        BlocProvider(
                    
          create: (context) {
            final bloc = CubitCubit();
            bloc.verTiempo();
            return bloc;
          },
        ),
      ],
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<BlocBloc, BlocState>(
                  builder: (context, state) {
                    if (state is BlocInitial) {
                      return Success(temperatura:state.location!);
                    } else if (state is BlocLoading) {
                      return Loading();
                    } else if (state is BlocFailure) {
                      return Text('Error al cargar los datos');
                    }
                    return SizedBox.shrink();
                  },
                ),
                BlocBuilder<CubitCubit, CubitState>(
                  builder: (context, state) {
                    if (state is CubitHome) {
                      return Home(pronostico: state.forecast);
                    } else if (state is CubitLoad) {
                      return Load();
                    } else if (state is CubitFail) {
                      return Text('Error al cargar los datos');
                    }
                    return SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
        ),
      )
      );
  }
}
