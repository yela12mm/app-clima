import 'package:bloc/bloc.dart';
import 'package:clima/feature/home/models/apiPRO.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:equatable/equatable.dart' show Equatable;

part 'cubit_state.dart';

abstract class CubitCubit extends Cubit<CubitState> {
  final List<Pronostico> forecast;
  final List<Pronostico> forecastday;
  CubitCubit({required this.forecast, required this.forecastday})
    : super(CubitHome(forecast: forecastday, forecastday: []));
  void verTiempo() async {
    emit(CubitLoad());
    try {
      final pronostico = await fetchForecast();
      emit(CubitHome(forecast: forecastday, forecastday: []));
    } catch (a) {
      emit(CubitFail());
    }
  }
}
