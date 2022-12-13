// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i3;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:recipe_finder/data_source/crashlytics/crashlytics_repository.dart'
    as _i13;
import 'package:recipe_finder/data_source/crashlytics/error_tracker.dart'
    as _i11;
import 'package:recipe_finder/data_source/crashlytics/trackers/firebase_error_tracker.dart'
    as _i5;
import 'package:recipe_finder/data_source/crashlytics/trackers/std_out_error_tracker.dart'
    as _i10;
import 'package:recipe_finder/domain/crashlytics/crashlytics_repository.dart'
    as _i12;
import 'package:recipe_finder/domain/crashlytics/error_tracker_use_case.dart'
    as _i14;
import 'package:recipe_finder/features/scanner/presentation/cubit/scanner_cubit.dart'
    as _i7;
import 'package:recipe_finder/features/settings/presentation/cubit/settings_cubit.dart'
    as _i8;
import 'package:recipe_finder/features/splash_screen/presentation/cubit/splash_cubit.dart'
    as _i9;
import 'package:recipe_finder/injectable/modules/analytics.dart' as _i15;
import 'package:recipe_finder/injectable/modules/crashlytics.dart' as _i16;
import 'package:recipe_finder/injectable/modules/logger.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i4.FirebaseCrashlytics>(
      () => crashlyticsModule.getFirebaseCrashlytics());
  gh.factory<_i5.FirebaseErrorTracker>(() =>
      _i5.FirebaseErrorTracker(crashlytics: get<_i4.FirebaseCrashlytics>()));
  gh.factory<_i6.Logger>(() => loggerModule.getLogger());
  gh.factory<_i7.ScannerCubit>(() => _i7.ScannerCubit());
  gh.factory<_i8.SettingsCubit>(() => _i8.SettingsCubit());
  gh.factoryParam<_i9.SplashCubit, List<_i9.LoadingTask>?, dynamic>((
    loadingTasks,
    _,
  ) =>
      _i9.SplashCubit(loadingTasks: loadingTasks));
  gh.factory<_i10.StdOutErrorTracker>(
      () => _i10.StdOutErrorTracker(logger: get<_i6.Logger>()));
  gh.factory<List<_i11.ErrorTracker>>(() => crashlyticsModule.getErrorTrackers(
        get<_i5.FirebaseErrorTracker>(),
        get<_i10.StdOutErrorTracker>(),
      ));
  gh.factory<_i12.CrashlyticsRepository>(() =>
      _i13.DefaultCrashlyticsRepository(
          trackers: get<List<_i11.ErrorTracker>>()));
  gh.factory<_i14.ErrorTrackerUseCase>(() => _i14.ErrorTrackerUseCase(
      crashlyticsRepository: get<_i12.CrashlyticsRepository>()));
  return get;
}

class _$AnalyticsModule extends _i15.AnalyticsModule {}

class _$CrashlyticsModule extends _i16.CrashlyticsModule {}

class _$LoggerModule extends _i17.LoggerModule {}
