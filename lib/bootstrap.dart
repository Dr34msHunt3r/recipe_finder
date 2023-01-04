import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe_finder/domain/analytics/event_tracker_use_case.dart';
import 'package:recipe_finder/domain/analytics/screen_tracker_use_case.dart';
import 'package:recipe_finder/domain/crashlytics/error_tracker_use_case.dart';
import 'package:recipe_finder/injectable/injectable.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver({
    required this.errorTrackerUseCase,
    required this.eventTrackerUseCase,
    required this.screenTrackerUseCase,
  });

  final ErrorTrackerUseCase errorTrackerUseCase;
  final EventTrackerUseCase eventTrackerUseCase;
  final ScreenTrackerUseCase screenTrackerUseCase;

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    log('onChange(${bloc.runtimeType}, $change)');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    errorTrackerUseCase.trackFatal(
      exception: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  final errorTrackerUseCase = getIt.get<ErrorTrackerUseCase>();
  final eventTrackerUseCase = getIt.get<EventTrackerUseCase>();
  final screenTrackerUseCase = getIt.get<ScreenTrackerUseCase>();

  FlutterError.onError = (details) {
    final exception = details.exception;
    final stackTrace = details.stack;
    errorTrackerUseCase.trackFatal(
      exception: exception,
      stackTrace: stackTrace,
    );
  };

  PlatformDispatcher.instance.onError = (exception, stackTrace) {
    errorTrackerUseCase.trackFatal(
      exception: exception,
      stackTrace: stackTrace,
    );
    return true;
  };

  Bloc.observer = AppBlocObserver(
    errorTrackerUseCase: errorTrackerUseCase,
    eventTrackerUseCase: eventTrackerUseCase,
    screenTrackerUseCase: screenTrackerUseCase,
  );

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => errorTrackerUseCase.trackFatal,
  );
}
