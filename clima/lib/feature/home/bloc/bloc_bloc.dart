
import 'package:bloc/bloc.dart';
import 'package:clima/feature/home/models/apiTEM.dart';
import 'package:clima/feature/home/models/modeloTEM.dart';
import 'package:equatable/equatable.dart';
part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  final Temperatura temperatura;
  BlocBloc({required this.temperatura}) : super(BlocInitial(current:temperatura, location: temperatura)) {
    on<HomeSearchPressed>((event, emit) async{
      emit(BlocLoading());
      try{
        final location= await fetchCurrentWeather();//funcion encargada de conectarse a internet pedir el clima y convertirlo a un objeto de tipo 
        emit(BlocInitial(current:temperatura, location: temperatura));
        
      }
      catch(a) {
        emit( const BlocFailure());
      }

    });
  }
}

