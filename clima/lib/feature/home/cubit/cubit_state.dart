part of 'cubit_cubit.dart';


abstract class CubitState extends Equatable{
  const CubitState();
  @override
  List<Object?> get props => [];
}
final class HomePage extends CubitState{
  final Pronostico? forecast;

  const HomePage({required this.forecast});
  
  @override
  List<Object?> get props => [forecast];
}
final class HomeLoad extends CubitState{}
final class HomeFail extends CubitState{}
