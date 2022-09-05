// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:recipe_finder/features/products/presentation/scanned_products_screen.dart'
    as _i3;
import 'package:recipe_finder/features/scanner/presentation/scanner_screen.dart'
    as _i2;
import 'package:recipe_finder/features/settings/presentation/settings_screen.dart'
    as _i4;
import 'package:recipe_finder/features/splash_screen/presentation/splash_screen.dart'
    as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    ScannerRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.ScannerScreen());
    },
    ScannedProductsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.ScannedProductsScreen());
    },
    SettingsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.SettingsScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(ScannerRoute.name, path: '/scanner-screen'),
        _i5.RouteConfig(ScannedProductsRoute.name,
            path: '/scanned-products-screen'),
        _i5.RouteConfig(SettingsRoute.name, path: '/settings-screen')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.ScannerScreen]
class ScannerRoute extends _i5.PageRouteInfo<void> {
  const ScannerRoute() : super(ScannerRoute.name, path: '/scanner-screen');

  static const String name = 'ScannerRoute';
}

/// generated route for
/// [_i3.ScannedProductsScreen]
class ScannedProductsRoute extends _i5.PageRouteInfo<void> {
  const ScannedProductsRoute()
      : super(ScannedProductsRoute.name, path: '/scanned-products-screen');

  static const String name = 'ScannedProductsRoute';
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-screen');

  static const String name = 'SettingsRoute';
}
