import 'package:clima/feature/home/bloc/bloc_bloc.dart';
import 'package:clima/feature/home/cubit/cubit_cubit.dart';
import 'package:clima/feature/home/presentacion/page/detalles.dart';
import 'package:clima/feature/home/presentacion/page/fail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clima/feature/home/presentacion/page/home.dart';
import 'package:clima/feature/home/presentacion/page/load.dart';
import 'package:clima/feature/home/presentacion/viewGlob/successGlo.dart';
import 'package:clima/feature/home/presentacion/views/failure.dart';
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
        debugShowCheckedModeBanner: false,
        home: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(148, 21, 143, 204), Color.fromARGB(255, 180, 186, 194)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
          child:Scaffold(

            backgroundColor: const Color.fromARGB(0, 0, 0, 0),
            appBar: AppBar(
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
              title: Text(
              'Climate',
              style: GoogleFonts.arimo(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
            

              fontSize: 25,
           
          ),
        ),
      ),
      actions: [
        SizedBox(width: 10),
        IconButton(
          iconSize: 40,
          color: Color.fromARGB(255, 255, 255, 255) ,
    
          icon: Icon(Icons.settings_outlined),
          onPressed: () {},
        ),
        SizedBox(width: 10),
      ],
    ),
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
                      return Failure();
                    }
                    return SizedBox.shrink();
                  },
                ),
                
                BlocBuilder<CubitCubit, CubitState>(
                  builder: (context, state) {
                    if (state is CubitHome) {
                      return Home(pronostico: state.forecast!);
                    } else if (state is CubitLoad) {
                      return Load();
                    } else if (state is CubitFail) {
                      return Fail();
                    }
                      return SizedBox.shrink();
                  },
                ),
               ],
              ),
        
            )
          )
        )
      )
    );
  }
}
