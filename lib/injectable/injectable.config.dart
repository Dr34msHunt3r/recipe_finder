// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i8;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;
import 'package:recipe_finder/core/config/app/app_config.dart' as _i3;
import 'package:recipe_finder/core/config/app/dev_app_config.dart' as _i4;
import 'package:recipe_finder/core/config/app/prod_app_config.dart' as _i5;
import 'package:recipe_finder/core/config/app/staging_app_config.dart' as _i6;
import 'package:recipe_finder/core/routing/app_router.dart' as _i7;
import 'package:recipe_finder/data_source/analytics/analytics_tracker.dart'
    as _i19;
import 'package:recipe_finder/data_source/analytics/default_analytics_repository.dart'
    as _i22;
import 'package:recipe_finder/data_source/analytics/trackers/firebase_analytics_tracker.dart'
    as _i9;
import 'package:recipe_finder/data_source/analytics/trackers/std_out_analytics_tracker.dart'
    as _i17;
import 'package:recipe_finder/data_source/crashlytics/crashlytics_repository.dart'
    as _i24;
import 'package:recipe_finder/data_source/crashlytics/error_tracker.dart'
    as _i20;
import 'package:recipe_finder/data_source/crashlytics/trackers/firebase_error_tracker.dart'
    as _i11;
import 'package:recipe_finder/data_source/crashlytics/trackers/std_out_error_tracker.dart'
    as _i18;
import 'package:recipe_finder/domain/analytics/analytics_repository.dart'
    as _i21;
import 'package:recipe_finder/domain/analytics/event_tracker_use_case.dart'
    as _i26;
import 'package:recipe_finder/domain/analytics/screen_tracker_use_case.dart'
    as _i27;
import 'package:recipe_finder/domain/crashlytics/crashlytics_repository.dart'
    as _i23;
import 'package:recipe_finder/domain/crashlytics/error_tracker_use_case.dart'
    as _i25;
import 'package:recipe_finder/features/home/presentation/cubit/home_cubit.dart'
    as _i12;
import 'package:recipe_finder/features/scanner/presentation/cubit/scanner_cubit.dart'
    as _i14;
import 'package:recipe_finder/features/settings/presentation/cubit/settings_cubit.dart'
    as _i15;
import 'package:recipe_finder/features/splash_screen/presentation/cubit/splash_cubit.dart'
    as _i16;
import 'package:recipe_finder/injectable/modules/analytics.dart' as _i28;
import 'package:recipe_finder/injectable/modules/crashlytics.dart' as _i29;
import 'package:recipe_finder/injectable/modules/logger.dart' as _i30;

const String _development = 'development';
const String _production = 'production';
const String _staging = 'staging';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final analyticsModule = _$AnalyticsModule();
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
  gh.singleton<_i7.AppRouter>(_i7.AppRouter());
  gh.factory<_i8.FirebaseAnalytics>(
      () => analyticsModule.getFirebaseAnalytics());
  gh.factory<_i9.FirebaseAnalyticsTracker>(() =>
      _i9.FirebaseAnalyticsTracker(analytics: gh<_i8.FirebaseAnalytics>()));
  gh.factory<_i10.FirebaseCrashlytics>(
      () => crashlyticsModule.getFirebaseCrashlytics());
  gh.factory<_i11.FirebaseErrorTracker>(() =>
      _i11.FirebaseErrorTracker(crashlytics: gh<_i10.FirebaseCrashlytics>()));
  gh.factory<_i12.HomeCubit>(() => _i12.HomeCubit());
  gh.factory<_i13.Logger>(() => loggerModule.getLogger());
  gh.factory<_i14.ScannerCubit>(() => _i14.ScannerCubit());
  gh.factory<_i15.SettingsCubit>(() => _i15.SettingsCubit());
  gh.factoryParam<_i16.SplashCubit, List<_i16.LoadingTask>?, dynamic>((
    loadingTasks,
    _,
  ) =>
      _i16.SplashCubit(loadingTasks: loadingTasks));
  gh.factory<_i17.StdOutAnalyticsTracker>(
      () => _i17.StdOutAnalyticsTracker(logger: gh<_i13.Logger>()));
  gh.factory<_i18.StdOutErrorTracker>(
      () => _i18.StdOutErrorTracker(logger: gh<_i13.Logger>()));
  gh.factory<List<_i19.AnalyticsTracker>>(
      () => analyticsModule.getAnalyticsTrackers(
            gh<_i9.FirebaseAnalyticsTracker>(),
            gh<_i17.StdOutAnalyticsTracker>(),
          ));
  gh.factory<List<_i20.ErrorTracker>>(() => crashlyticsModule.getErrorTrackers(
        gh<_i11.FirebaseErrorTracker>(),
        gh<_i18.StdOutErrorTracker>(),
      ));
  gh.factory<_i21.AnalyticsRepository>(() => _i22.DefaultAnalyticsRepository(
      trackers: gh<List<_i19.AnalyticsTracker>>()));
  gh.factory<_i23.CrashlyticsRepository>(() =>
      _i24.DefaultCrashlyticsRepository(
          trackers: gh<List<_i20.ErrorTracker>>()));
  gh.factory<_i25.ErrorTrackerUseCase>(() => _i25.ErrorTrackerUseCase(
      crashlyticsRepository: gh<_i23.CrashlyticsRepository>()));
  gh.factory<_i26.EventTrackerUseCase>(() => _i26.EventTrackerUseCase(
      analyticsRepository: gh<_i21.AnalyticsRepository>()));
  gh.factory<_i27.ScreenTrackerUseCase>(() => _i27.ScreenTrackerUseCase(
      analyticsRepository: gh<_i21.AnalyticsRepository>()));
  return getIt;
}

class _$AnalyticsModule extends _i28.AnalyticsModule {}

class _$CrashlyticsModule extends _i29.CrashlyticsModule {}

class _$LoggerModule extends _i30.LoggerModule {}
