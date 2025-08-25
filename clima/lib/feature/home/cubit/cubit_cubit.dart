import 'package:bloc/bloc.dart';
import 'package:clima/feature/home/models/apiPRO.dart';
import 'package:clima/feature/home/models/modeloPRO.dart';
import 'package:equatable/equatable.dart' show Equatable;
import 'package:url_launcher/url_launcher.dart';

part 'cubit_state.dart';

class CubitCubit extends Cubit<CubitState> {
  final List<Pronostico> pronostico = [];
  CubitCubit() : super(CubitLoad());

  Future<void> verTiempo() async {
    emit(CubitLoad());
    try {
      final pronostico = await fetchForecast();
      emit(CubitHome(forecast: pronostico, forecastday: <Pronostico>[]));
    } catch (e) {
      emit(CubitFail());
    }
  }

  final Uri _url = Uri.parse(
    'https://www.accuweather.com/es/co/barranquilla/107123/weather-forecast/107123?city=barranquilla',
  );
  Future<void> verDetalles() async {
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir $_url';
    }
  }
}
