part of 'main_navigation_cubit.dart';

@freezed
class MainNavigationState with _$MainNavigationState {
  const factory MainNavigationState.initial() = _Initial;

  @Implements<MainNavigationListenerState>()
  const factory MainNavigationState.showScannedProducts() =
      _ShowScannedProducts;
}

abstract class MainNavigationListenerState {}
