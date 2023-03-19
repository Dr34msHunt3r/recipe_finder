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
  void onCreate(BlocBase<dynamic> bloc) {
    log('onCreate(${bloc.runtimeType})');
    ScreenTrackerNames screenName = getScreenName(bloc);
    screenTrackerUseCase.trackScreen(
      screenName: screenName,
      screenClass: screenName.rawName,
    );
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    log('onChange(${bloc.runtimeType}, $change)');
    EventTrackerNames? eventName = getEventName(change, bloc);
    if (eventName != null) {
      eventTrackerUseCase.trackEvent(
        eventName: eventName,
      );
    }
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

  ScreenTrackerNames getScreenName(BlocBase<dynamic> bloc) {
    final String basePhrase =
        bloc.runtimeType.toString().replaceAll('Cubit', '');
    final screenName = ScreenTrackerNames.values.firstWhere(
      (screenTrackerName) => screenTrackerName.rawName.contains(basePhrase),
      orElse: () => ScreenTrackerNames.unclassified,
    );
    return screenName;
  }

  EventTrackerNames? getEventName(
      Change<dynamic> change, BlocBase<dynamic> bloc) {
    EventTrackerNames? eventName;
    if (change.nextState.toString() == 'SplashState.showWelcomePage()') {
      eventName = EventTrackerNames.appInitialized;
    } else if (bloc.runtimeType.toString() == 'SettingsCubit' &&
        change.currentState != change.nextState) {
      eventName = EventTrackerNames.changedSettings;
    }
    return eventName;
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
