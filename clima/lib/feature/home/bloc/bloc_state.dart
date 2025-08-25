part of 'bloc_bloc.dart';

sealed class BlocState extends Equatable {
  const BlocState();
  @override
  List<Object?> get props => [];
}

final class BlocInitial extends BlocState {
  final Temperatura?location;
  final Temperatura? current;
  const BlocInitial({this.location, this.current});
  @override
  List<Object?> get props => [location, current];
}

final class BlocLoading extends BlocState {}

final class BlocFailure extends BlocState {}
