// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

import '../data_source/analytics/analytics_tracker.dart' as _i13;
import '../data_source/analytics/default_analytics_repository.dart' as _i16;
import '../data_source/analytics/trackers/firebase_analytics_tracker.dart'
    as _i4;
import '../data_source/analytics/trackers/std_out_analytics_tracker.dart'
    as _i11;
import '../data_source/crashlytics/crashlytics_repository.dart' as _i18;
import '../data_source/crashlytics/error_tracker.dart' as _i14;
import '../data_source/crashlytics/trackers/firebase_error_tracker.dart' as _i6;
import '../data_source/crashlytics/trackers/std_out_error_tracker.dart' as _i12;
import '../domain/analytics/analytics_repository.dart' as _i15;
import '../domain/analytics/event_tracker_use_case.dart' as _i20;
import '../domain/analytics/screen_tracker_use_case.dart' as _i21;
import '../domain/crashlytics/crashlytics_repository.dart' as _i17;
import '../domain/crashlytics/error_tracker_use_case.dart' as _i19;
import '../features/scanner/presentation/cubit/scanner_cubit.dart' as _i8;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i9;
import '../features/splash_screen/presentation/cubit/splash_cubit.dart' as _i10;
import 'modules/analytics.dart' as _i22;
import 'modules/crashlytics.dart' as _i23;
import 'modules/logger.dart' as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final analyticsModule = _$AnalyticsModule();
  final crashlyticsModule = _$CrashlyticsModule();
  final loggerModule = _$LoggerModule();
  gh.factory<_i3.FirebaseAnalytics>(
      () => analyticsModule.getFirebaseAnalytics());
  gh.factory<_i4.FirebaseAnalyticsTracker>(() =>
      _i4.FirebaseAnalyticsTracker(analytics: get<_i3.FirebaseAnalytics>()));
  gh.factory<_i5.FirebaseCrashlytics>(
      () => crashlyticsModule.getFirebaseCrashlytics());
  gh.factory<_i6.FirebaseErrorTracker>(() =>
      _i6.FirebaseErrorTracker(crashlytics: get<_i5.FirebaseCrashlytics>()));
  gh.factory<_i7.Logger>(() => loggerModule.getLogger());
  gh.factory<_i8.ScannerCubit>(() => _i8.ScannerCubit());
  gh.factory<_i9.SettingsCubit>(() => _i9.SettingsCubit());
  gh.factoryParam<_i10.SplashCubit, List<_i10.LoadingTask>?, dynamic>((
    loadingTasks,
    _,
  ) =>
      _i10.SplashCubit(loadingTasks: loadingTasks));
  gh.factory<_i11.StdOutAnalyticsTracker>(
      () => _i11.StdOutAnalyticsTracker(logger: get<_i7.Logger>()));
  gh.factory<_i12.StdOutErrorTracker>(
      () => _i12.StdOutErrorTracker(logger: get<_i7.Logger>()));
  gh.factory<List<_i13.AnalyticsTracker>>(
      () => analyticsModule.getAnalyticsTrackers(
            get<_i4.FirebaseAnalyticsTracker>(),
            get<_i11.StdOutAnalyticsTracker>(),
          ));
  gh.factory<List<_i14.ErrorTracker>>(() => crashlyticsModule.getErrorTrackers(
        get<_i6.FirebaseErrorTracker>(),
        get<_i12.StdOutErrorTracker>(),
      ));
  gh.factory<_i15.AnalyticsRepository>(() => _i16.DefaultAnalyticsRepository(
      trackers: get<List<_i13.AnalyticsTracker>>()));
  gh.factory<_i17.CrashlyticsRepository>(() =>
      _i18.DefaultCrashlyticsRepository(
          trackers: get<List<_i14.ErrorTracker>>()));
  gh.factory<_i19.ErrorTrackerUseCase>(() => _i19.ErrorTrackerUseCase(
      crashlyticsRepository: get<_i17.CrashlyticsRepository>()));
  gh.factory<_i20.EventTrackerUseCase>(() => _i20.EventTrackerUseCase(
      analyticsRepository: get<_i15.AnalyticsRepository>()));
  gh.factory<_i21.ScreenTrackerUseCase>(() => _i21.ScreenTrackerUseCase(
      analyticsRepository: get<_i15.AnalyticsRepository>()));
  return get;
}

class _$AnalyticsModule extends _i22.AnalyticsModule {}

class _$CrashlyticsModule extends _i23.CrashlyticsModule {}

class _$LoggerModule extends _i24.LoggerModule {}
