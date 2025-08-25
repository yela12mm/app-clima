import 'package:bloc/bloc.dart';
import 'package:clima/feature/home/models/apiPRO.dart';
import 'package:clima/feature/home/models/modeloPRO.dart';
import 'package:equatable/equatable.dart' show Equatable;

part 'cubit_state.dart';

class CubitCubit extends Cubit<CubitState> {
  final List<Pronostico> pronostico = [];
  CubitCubit() : super(CubitLoad());

  Future<void> verTiempo() async {
    emit(CubitHome(forecast: pronostico, forecastday: <Pronostico>[])); 
    try {
      final pronostico = await fetchForecast();
      emit(CubitHome(forecast: pronostico, forecastday: <Pronostico>[]));
    } catch (e) {
      emit(CubitFail());
    }
  }
}