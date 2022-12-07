// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../common/data_source/crashlytics/crashlytics_repository.dart' as _i12;
import '../common/data_source/crashlytics/error_tracker.dart' as _i10;
import '../common/data_source/crashlytics/trackers/firebase_error_tracker.dart'
    as _i4;
import '../common/data_source/crashlytics/trackers/std_out_error_tracker.dart'
    as _i9;
import '../domain/crashlytics/crashlytics_repository.dart' as _i11;
import '../domain/crashlytics/error_tracker_use_case.dart' as _i13;
import '../features/scanner/presentation/cubit/scanner_cubit.dart' as _i6;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i7;
import '../features/splash_screen/presentation/cubit/splash_cubit.dart' as _i8;
import 'modules/crashlytics.dart' as _i14;
import 'modules/logger.dart' as _i15; // ignore_for_file: unnecessary_lambdas

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
  final crashlyticsModule = _$CrashlyticsModule();
  final loggerModule = _$LoggerModule();
  gh.factory<_i3.FirebaseCrashlytics>(
      () => crashlyticsModule.getFirebaseCrashlytics());
  gh.factory<_i4.FirebaseErrorTracker>(() =>
      _i4.FirebaseErrorTracker(crashlytics: get<_i3.FirebaseCrashlytics>()));
  gh.factory<_i5.Logger>(() => loggerModule.getLogger());
  gh.factory<_i6.ScannerCubit>(() => _i6.ScannerCubit());
  gh.factory<_i7.SettingsCubit>(() => _i7.SettingsCubit());
  gh.factoryParam<_i8.SplashCubit, List<_i8.LoadingTask>?, dynamic>((
    loadingTasks,
    _,
  ) =>
      _i8.SplashCubit(loadingTasks: loadingTasks));
  gh.factory<_i9.StdOutErrorTracker>(
      () => _i9.StdOutErrorTracker(logger: get<_i5.Logger>()));
  gh.factory<List<_i10.ErrorTracker>>(() => crashlyticsModule.getErrorTrackers(
        get<_i4.FirebaseErrorTracker>(),
        get<_i9.StdOutErrorTracker>(),
      ));
  gh.factory<_i11.CrashlyticsRepository>(() =>
      _i12.DefaultCrashlyticsRepository(
          trackers: get<List<_i10.ErrorTracker>>()));
  gh.factory<_i13.ErrorTrackerUseCase>(() => _i13.ErrorTrackerUseCase(
      crashlyticsRepository: get<_i11.CrashlyticsRepository>()));
  return get;
}

class _$CrashlyticsModule extends _i14.CrashlyticsModule {}

class _$LoggerModule extends _i15.LoggerModule {}
