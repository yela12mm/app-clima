import 'package:bloc/bloc.dart';
import 'package:clima/feature/home/models/apiTEM.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:equatable/equatable.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  final Temperatura temperatura;
  BlocBloc({required this.temperatura})
    : super(BlocInitial(location: temperatura, current: temperatura)) {
    on<HomeSearchPressed>((event, emit) async {
      emit(BlocLoading());
      try {
        final temperatura = await fetchCurrentWeather();
        emit(BlocInitial(location: temperatura, current: temperatura));
      } catch (a) {
        emit(BlocFailure());
      }
    });
  }
}
