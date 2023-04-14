// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:recipe_finder/common/widgets/main_navigation_widget.dart'
    as _i1;
import 'package:recipe_finder/features/home/presentation/home_screen.dart'
    as _i2;
import 'package:recipe_finder/features/products/presentation/scanned_products_screen.dart'
    as _i3;
import 'package:recipe_finder/features/recipes/presentation/recipes_screen.dart'
    as _i7;
import 'package:recipe_finder/features/scanner/presentation/scanner_screen.dart'
    as _i4;
import 'package:recipe_finder/features/settings/presentation/settings_screen.dart'
    as _i5;
import 'package:recipe_finder/features/splash_screen/presentation/splash_screen.dart'
    as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainNavigationRouter.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainNavigationWidget(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    ScannedProductsScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ScannedProductsScreen(),
      );
    },
    ScannerScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ScannerScreen(),
      );
    },
    SettingsScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsScreen(),
      );
    },
    SplashRouter.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
    RecipesScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RecipesScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainNavigationWidget]
class MainNavigationRouter extends _i8.PageRouteInfo<void> {
  const MainNavigationRouter({List<_i8.PageRouteInfo>? children})
      : super(
          MainNavigationRouter.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigationRouter';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i8.PageRouteInfo<void> {
  const HomeScreen({List<_i8.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ScannedProductsScreen]
class ScannedProductsScreen extends _i8.PageRouteInfo<void> {
  const ScannedProductsScreen({List<_i8.PageRouteInfo>? children})
      : super(
          ScannedProductsScreen.name,
          initialChildren: children,
        );

  static const String name = 'ScannedProductsScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ScannerScreen]
class ScannerScreen extends _i8.PageRouteInfo<void> {
  const ScannerScreen({List<_i8.PageRouteInfo>? children})
      : super(
          ScannerScreen.name,
          initialChildren: children,
        );

  static const String name = 'ScannerScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsScreen extends _i8.PageRouteInfo<void> {
  const SettingsScreen({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsScreen.name,
          initialChildren: children,
        );

  static const String name = 'SettingsScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashRouter extends _i8.PageRouteInfo<void> {
  const SplashRouter({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRouter.name,
          initialChildren: children,
        );

  static const String name = 'SplashRouter';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RecipesScreen]
class RecipesScreen extends _i8.PageRouteInfo<void> {
  const RecipesScreen({List<_i8.PageRouteInfo>? children})
      : super(
          RecipesScreen.name,
          initialChildren: children,
        );

  static const String name = 'RecipesScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
