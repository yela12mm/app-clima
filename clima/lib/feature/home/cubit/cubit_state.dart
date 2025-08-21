part of 'cubit_cubit.dart';

sealed class CubitState extends Equatable {
  const CubitState();
  @override
  List<Object?> get props => [];
}

final class CubitHome extends CubitState {
  final List<Pronostico>? forecast;
  final List<Pronostico>? forecastday;
  const CubitHome({required this.forecast, required this.forecastday});
  @override
  List<Object?> get props => [forecast, forecastday];
}

final class CubitLoad extends CubitState {}

final class CubitFail extends CubitState {}
