import 'package:bloc/bloc.dart';
import 'package:clima/feature/home/models/modeloPRO.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:equatable/equatable.dart';

part 'cubit_state.dart';

class HomeCubit extends Cubit<CubitState> {
  final Pronostico pronostico;
  HomeCubit() : super(CubitState());
  
}