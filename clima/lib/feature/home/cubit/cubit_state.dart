part of 'cubit_cubit.dart';

sealed class CubitState extends Equatable {
  const CubitState();
  @override
  List<Object?> get props => [];
}

final class CubitHome extends CubitState {
  final List<Pronostico>? forecast;
  final List<Pronostico>? forecastday;
  const CubitHome({this.forecast, this.forecastday});
  @override
  List<Object?> get props => [forecast, forecastday];
}

final class CubitLoad extends CubitState {}

final class CubitFail extends CubitState {}

final class CubitData extends CubitState {
  final List<Pronostico>? forecast;
  final List<Pronostico>? forecastday;
  const CubitData({this.forecast, this.forecastday});
  @override
  List<Object?> get props => [forecast, forecastday];
}
