import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_finder/core/config/app_assets.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class LoadingTask {
  final Future<void> Function(BuildContext) work;
  LoadingTask(this.work);
}

@injectable
class SplashCubit extends Cubit<SplashState> {
  final List<LoadingTask>? loadingTasks;
  SplashCubit({@factoryParam this.loadingTasks})
      : super(const SplashState.initial());

  Future<void> appStartup(BuildContext context) async {
    await _preloadSplashAssets(context);
    await _load(context);
    emit(const SplashState.showWelcomePage());
  }

  Future<void> _preloadSplashAssets(BuildContext context) async {
    const splashImage = AssetImage(AppAssets.splashImage);
    await precacheImage(splashImage, context);
    emit(const SplashState.splashReady());
  }

  Future<void> _load(BuildContext context) async {
    final loadingTasksList = loadingTasks;
    if (loadingTasksList == null) {
      return;
    }
    emit(const SplashState.loading());
    await Future.wait(loadingTasksList.map((task) => task.work(context)));
  }
}
