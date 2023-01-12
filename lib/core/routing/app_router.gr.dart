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
import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i8;

import '../../common/widgets/main_navigation_widget.dart' as _i3;
import '../../features/home/presentation/home_screen.dart' as _i4;
import '../../features/products/presentation/scanned_products_screen.dart'
    as _i5;
import '../../features/scanner/presentation/scanner_screen.dart' as _i7;
import '../../features/settings/presentation/settings_screen.dart' as _i6;
import '../../features/splash_screen/presentation/splash_screen.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    EmptyRouterRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    SplashRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
      );
    },
    MainNavigationRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainNavigationWidget(),
      );
    },
    ScannerRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    ScannedProductsRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    ScannedProductsScreen.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ScannedProductsScreen(),
      );
    },
    SettingsScreen.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsScreen(),
      );
    },
    ScannerScreen.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ScannerScreen(),
      );
    },
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(
          EmptyRouterRoute.name,
          path: '/',
          children: [
            _i1.RouteConfig(
              SplashRouter.name,
              path: '',
              parent: EmptyRouterRoute.name,
            ),
            _i1.RouteConfig(
              MainNavigationRouter.name,
              path: '',
              parent: EmptyRouterRoute.name,
              children: [
                _i1.RouteConfig(
                  HomeRouter.name,
                  path: 'home',
                  parent: MainNavigationRouter.name,
                  children: [
                    _i1.RouteConfig(
                      HomeScreen.name,
                      path: '',
                      parent: HomeRouter.name,
                    )
                  ],
                ),
                _i1.RouteConfig(
                  ScannedProductsRouter.name,
                  path: 'scanned-products',
                  parent: MainNavigationRouter.name,
                  children: [
                    _i1.RouteConfig(
                      ScannedProductsScreen.name,
                      path: '',
                      parent: ScannedProductsRouter.name,
                    )
                  ],
                ),
                _i1.RouteConfig(
                  SettingsRouter.name,
                  path: 'settings',
                  parent: MainNavigationRouter.name,
                  children: [
                    _i1.RouteConfig(
                      SettingsScreen.name,
                      path: '',
                      parent: SettingsRouter.name,
                    )
                  ],
                ),
              ],
            ),
            _i1.RouteConfig(
              ScannerRouter.name,
              path: 'scanner',
              parent: EmptyRouterRoute.name,
              children: [
                _i1.RouteConfig(
                  ScannerScreen.name,
                  path: '',
                  parent: ScannerRouter.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class EmptyRouterRoute extends _i1.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i1.PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [_i2.SplashScreen]
class SplashRouter extends _i1.PageRouteInfo<void> {
  const SplashRouter()
      : super(
          SplashRouter.name,
          path: '',
        );

  static const String name = 'SplashRouter';
}

/// generated route for
/// [_i3.MainNavigationWidget]
class MainNavigationRouter extends _i1.PageRouteInfo<void> {
  const MainNavigationRouter({List<_i1.PageRouteInfo>? children})
      : super(
          MainNavigationRouter.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'MainNavigationRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class ScannerRouter extends _i1.PageRouteInfo<void> {
  const ScannerRouter({List<_i1.PageRouteInfo>? children})
      : super(
          ScannerRouter.name,
          path: 'scanner',
          initialChildren: children,
        );

  static const String name = 'ScannerRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class HomeRouter extends _i1.PageRouteInfo<void> {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class ScannedProductsRouter extends _i1.PageRouteInfo<void> {
  const ScannedProductsRouter({List<_i1.PageRouteInfo>? children})
      : super(
          ScannedProductsRouter.name,
          path: 'scanned-products',
          initialChildren: children,
        );

  static const String name = 'ScannedProductsRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class SettingsRouter extends _i1.PageRouteInfo<void> {
  const SettingsRouter({List<_i1.PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'settings',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i1.PageRouteInfo<void> {
  const HomeScreen()
      : super(
          HomeScreen.name,
          path: '',
        );

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i5.ScannedProductsScreen]
class ScannedProductsScreen extends _i1.PageRouteInfo<void> {
  const ScannedProductsScreen()
      : super(
          ScannedProductsScreen.name,
          path: '',
        );

  static const String name = 'ScannedProductsScreen';
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsScreen extends _i1.PageRouteInfo<void> {
  const SettingsScreen()
      : super(
          SettingsScreen.name,
          path: '',
        );

  static const String name = 'SettingsScreen';
}

/// generated route for
/// [_i7.ScannerScreen]
class ScannerScreen extends _i1.PageRouteInfo<void> {
  const ScannerScreen()
      : super(
          ScannerScreen.name,
          path: '',
        );

  static const String name = 'ScannerScreen';
}
