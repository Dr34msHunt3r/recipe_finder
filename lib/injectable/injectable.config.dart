// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import '../common/data_source/crashlytics/crashlytics_repository.dart' as _i16;
import '../common/data_source/crashlytics/error_tracker.dart' as _i14;
import '../common/data_source/crashlytics/trackers/firebase_error_tracker.dart'
    as _i8;
import '../common/data_source/crashlytics/trackers/std_out_error_tracker.dart'
    as _i13;
import '../core/config/app/app_config.dart' as _i3;
import '../core/config/app/dev_app_config.dart' as _i4;
import '../core/config/app/prod_app_config.dart' as _i5;
import '../core/config/app/staging_app_config.dart' as _i6;
import '../domain/crashlytics/crashlytics_repository.dart' as _i15;
import '../domain/crashlytics/error_tracker_use_case.dart' as _i17;
import '../features/scanner/presentation/cubit/scanner_cubit.dart' as _i10;
import '../features/settings/presentation/cubit/settings_cubit.dart' as _i11;
import '../features/splash_screen/presentation/cubit/splash_cubit.dart' as _i12;
import 'modules/crashlytics.dart' as _i18;
import 'modules/logger.dart' as _i19;

const String _development = 'development';
const String _production = 'production';
const String _staging = 'staging';
// ignore_for_file: unnecessary_lambdas
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
  gh.factory<_i3.AppConfig>(
    () => _i4.DevelopmentAppConfig(),
    registerFor: {_development},
  );
  gh.factory<_i3.AppConfig>(
    () => _i5.ProductionAppConfig(),
    registerFor: {_production},
  );
  gh.factory<_i3.AppConfig>(
    () => _i6.StagingAppConfig(),
    registerFor: {_staging},
  );
  gh.factory<_i7.FirebaseCrashlytics>(
      () => crashlyticsModule.getFirebaseCrashlytics());
  gh.factory<_i8.FirebaseErrorTracker>(() =>
      _i8.FirebaseErrorTracker(crashlytics: get<_i7.FirebaseCrashlytics>()));
  gh.factory<_i9.Logger>(() => loggerModule.getLogger());
  gh.factory<_i10.ScannerCubit>(() => _i10.ScannerCubit());
  gh.factory<_i11.SettingsCubit>(() => _i11.SettingsCubit());
  gh.factoryParam<_i12.SplashCubit, List<_i12.LoadingTask>?, dynamic>((
    loadingTasks,
    _,
  ) =>
      _i12.SplashCubit(loadingTasks: loadingTasks));
  gh.factory<_i13.StdOutErrorTracker>(
      () => _i13.StdOutErrorTracker(logger: get<_i9.Logger>()));
  gh.factory<List<_i14.ErrorTracker>>(() => crashlyticsModule.getErrorTrackers(
        get<_i8.FirebaseErrorTracker>(),
        get<_i13.StdOutErrorTracker>(),
      ));
  gh.factory<_i15.CrashlyticsRepository>(() =>
      _i16.DefaultCrashlyticsRepository(
          trackers: get<List<_i14.ErrorTracker>>()));
  gh.factory<_i17.ErrorTrackerUseCase>(() => _i17.ErrorTrackerUseCase(
      crashlyticsRepository: get<_i15.CrashlyticsRepository>()));
  return get;
}

class _$CrashlyticsModule extends _i18.CrashlyticsModule {}

class _$LoggerModule extends _i19.LoggerModule {}
