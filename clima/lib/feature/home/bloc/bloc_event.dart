part of 'bloc_bloc.dart';

@immutable
sealed class BlocEvent extends Equatable{}
@override
  List<Object> get props => [];
}

final class HomeSearchPressed extends HomeEvent {}