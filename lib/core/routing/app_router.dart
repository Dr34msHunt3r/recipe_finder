import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_finder/core/config/app_paths.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: AppPaths.replaceInRouteName,
)
@Singleton()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: SplashRouter.page,
      path: AppPaths.initialPath,
    ),
    AutoRoute(
      page: MainNavigationRouter.page,
      path: AppPaths.dashboardPath,
      children: [
        RedirectRoute(
          path: '',
          redirectTo: AppPaths.homePath,
        ),
        AutoRoute(
          page: HomeScreen.page,
          path: AppPaths.homePath,
        ),
        AutoRoute(
          page: ScannedProductsScreen.page,
          path: AppPaths.scannedProductsPath,
        ),
        AutoRoute(
          path: AppPaths.settingsPath,
          page: SettingsScreen.page,
        ),
      ],
    ),
    AutoRoute(
      path: AppPaths.scannerPath,
      page: ScannerScreen.page,
    ),
  ];
}
