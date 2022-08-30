// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/main_navigation/presentation/cubit/main_navigation_cubit.dart'
    as _i3;
import '../features/scanner/presentation/cubit/scanner_cubit.dart' as _i4;
import '../features/splash_screen/presentation/cubit/splash_cubit.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.MainNavigationCubit>(() => _i3.MainNavigationCubit());
  gh.factory<_i4.ScannerCubit>(() => _i4.ScannerCubit());
  gh.factoryParam<_i5.SplashCubit, List<_i5.LoadingTask>?, dynamic>(
      (loadingTasks, _) => _i5.SplashCubit(loadingTasks: loadingTasks));
  return get;
}
