// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i10;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i15;
import 'package:recipe_finder/core/config/app/app_config.dart' as _i3;
import 'package:recipe_finder/core/config/app/dev_app_config.dart' as _i4;
import 'package:recipe_finder/core/config/app/prod_app_config.dart' as _i5;
import 'package:recipe_finder/core/config/app/staging_app_config.dart' as _i6;
import 'package:recipe_finder/core/routing/app_router.dart' as _i7;
import 'package:recipe_finder/data_source/analytics/analytics_tracker.dart'
    as _i26;
import 'package:recipe_finder/data_source/analytics/default_analytics_repository.dart'
    as _i28;
import 'package:recipe_finder/data_source/analytics/trackers/firebase_analytics_tracker.dart'
    as _i11;
import 'package:recipe_finder/data_source/analytics/trackers/std_out_analytics_tracker.dart'
    as _i20;
import 'package:recipe_finder/data_source/crashlytics/crashlytics_repository.dart'
    as _i30;
import 'package:recipe_finder/data_source/crashlytics/error_tracker.dart'
    as _i25;
import 'package:recipe_finder/data_source/crashlytics/trackers/firebase_error_tracker.dart'
    as _i13;
import 'package:recipe_finder/data_source/crashlytics/trackers/std_out_error_tracker.dart'
    as _i21;
import 'package:recipe_finder/domain/analytics/analytics_repository.dart'
    as _i27;
import 'package:recipe_finder/domain/analytics/event_tracker_use_case.dart'
    as _i32;
import 'package:recipe_finder/domain/analytics/screen_tracker_use_case.dart'
    as _i33;
import 'package:recipe_finder/domain/crashlytics/crashlytics_repository.dart'
    as _i29;
import 'package:recipe_finder/domain/crashlytics/error_tracker_use_case.dart'
    as _i31;
import 'package:recipe_finder/domain/product/repository/product_repository.dart'
    as _i9;
import 'package:recipe_finder/domain/product/use_case/create_product_use_case.dart'
    as _i8;
import 'package:recipe_finder/domain/product/use_case/remove_product_use_case.dart'
    as _i16;
import 'package:recipe_finder/domain/product/use_case/update_product_use_case.dart'
    as _i22;
import 'package:recipe_finder/domain/product/use_case/watch_product_use_case.dart'
    as _i23;
import 'package:recipe_finder/domain/product/use_case/watch_products_use_case.dart'
    as _i24;
import 'package:recipe_finder/features/home/presentation/cubit/home_cubit.dart'
    as _i14;
import 'package:recipe_finder/features/scanner/presentation/cubit/scanner_cubit.dart'
    as _i17;
import 'package:recipe_finder/features/settings/presentation/cubit/settings_cubit.dart'
    as _i18;
import 'package:recipe_finder/features/splash_screen/presentation/cubit/splash_cubit.dart'
    as _i19;
import 'package:recipe_finder/injectable/modules/analytics.dart' as _i34;
import 'package:recipe_finder/injectable/modules/crashlytics.dart' as _i35;
import 'package:recipe_finder/injectable/modules/logger.dart' as _i36;

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
  gh.factory<_i8.CreateProductUseCase>(
      () => _i8.CreateProductUseCase(repository: gh<_i9.ProductRepository>()));
  gh.factory<_i10.FirebaseAnalytics>(
      () => analyticsModule.getFirebaseAnalytics());
  gh.factory<_i11.FirebaseAnalyticsTracker>(() =>
      _i11.FirebaseAnalyticsTracker(analytics: gh<_i10.FirebaseAnalytics>()));
  gh.factory<_i12.FirebaseCrashlytics>(
      () => crashlyticsModule.getFirebaseCrashlytics());
  gh.factory<_i13.FirebaseErrorTracker>(() =>
      _i13.FirebaseErrorTracker(crashlytics: gh<_i12.FirebaseCrashlytics>()));
  gh.factory<_i14.HomeCubit>(() => _i14.HomeCubit());
  gh.factory<_i15.Logger>(() => loggerModule.getLogger());
  gh.factory<_i16.RemoveProductUseCase>(
      () => _i16.RemoveProductUseCase(repository: gh<_i9.ProductRepository>()));
  gh.factory<_i17.ScannerCubit>(() => _i17.ScannerCubit());
  gh.factory<_i18.SettingsCubit>(() => _i18.SettingsCubit());
  gh.factoryParam<_i19.SplashCubit, List<_i19.LoadingTask>?, dynamic>((
    loadingTasks,
    _,
  ) =>
      _i19.SplashCubit(loadingTasks: loadingTasks));
  gh.factory<_i20.StdOutAnalyticsTracker>(
      () => _i20.StdOutAnalyticsTracker(logger: gh<_i15.Logger>()));
  gh.factory<_i21.StdOutErrorTracker>(
      () => _i21.StdOutErrorTracker(logger: gh<_i15.Logger>()));
  gh.factory<_i22.UpdateProductUseCase>(
      () => _i22.UpdateProductUseCase(repository: gh<_i9.ProductRepository>()));
  gh.factory<_i23.WatchProductUseCase>(
      () => _i23.WatchProductUseCase(repository: gh<_i9.ProductRepository>()));
  gh.factory<_i24.WatchProductsUseCase>(
      () => _i24.WatchProductsUseCase(repository: gh<_i9.ProductRepository>()));
  gh.factory<List<_i25.ErrorTracker>>(() => crashlyticsModule.getErrorTrackers(
        gh<_i13.FirebaseErrorTracker>(),
        gh<_i21.StdOutErrorTracker>(),
      ));
  gh.factory<List<_i26.AnalyticsTracker>>(
      () => analyticsModule.getAnalyticsTrackers(
            gh<_i11.FirebaseAnalyticsTracker>(),
            gh<_i20.StdOutAnalyticsTracker>(),
          ));
  gh.factory<_i27.AnalyticsRepository>(() => _i28.DefaultAnalyticsRepository(
      trackers: gh<List<_i26.AnalyticsTracker>>()));
  gh.factory<_i29.CrashlyticsRepository>(() =>
      _i30.DefaultCrashlyticsRepository(
          trackers: gh<List<_i25.ErrorTracker>>()));
  gh.factory<_i31.ErrorTrackerUseCase>(() => _i31.ErrorTrackerUseCase(
      crashlyticsRepository: gh<_i29.CrashlyticsRepository>()));
  gh.factory<_i32.EventTrackerUseCase>(() => _i32.EventTrackerUseCase(
      analyticsRepository: gh<_i27.AnalyticsRepository>()));
  gh.factory<_i33.ScreenTrackerUseCase>(() => _i33.ScreenTrackerUseCase(
      analyticsRepository: gh<_i27.AnalyticsRepository>()));
  return getIt;
}

class _$AnalyticsModule extends _i34.AnalyticsModule {}

class _$CrashlyticsModule extends _i35.CrashlyticsModule {}

class _$LoggerModule extends _i36.LoggerModule {}
