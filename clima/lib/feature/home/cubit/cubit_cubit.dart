import 'package:bloc/bloc.dart';
import 'package:clima/feature/home/models/apiPRO.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:equatable/equatable.dart' show Equatable;

part 'cubit_state.dart';

class CubitCubit extends Cubit<CubitState> {
  CubitCubit() : super(CubitLoad());

  Future<void> verTiempo() async {
    emit(CubitLoad());
    try {
      final pronostico = await fetchForecast();
      emit(CubitHome(forecast: pronostico, forecastday: []));
    } catch (e) {
      emit(CubitFail());
    }
  }
}