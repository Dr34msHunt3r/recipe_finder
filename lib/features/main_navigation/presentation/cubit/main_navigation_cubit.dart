import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_navigation_cubit.freezed.dart';
part 'main_navigation_state.dart';

@injectable
class MainNavigationCubit extends Cubit<MainNavigationState> {
  MainNavigationCubit() : super(const MainNavigationState.initial());

  void onScannedProductsTap() {
    emit(const MainNavigationState.showScannedProducts());
  }
}
