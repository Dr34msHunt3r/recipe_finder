part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
}

abstract class HomeBuilderState {}

abstract class HomeListenerState {}
