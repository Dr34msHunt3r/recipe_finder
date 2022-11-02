import 'package:auto_route/auto_route.dart';
import 'package:recipe_finder/common/widgets/main_navigation_widget.dart';
import 'package:recipe_finder/core/config/app_paths.dart';
import 'package:recipe_finder/features/products/presentation/scanned_products_screen.dart';
import 'package:recipe_finder/features/scanner/presentation/home_screen.dart';
import 'package:recipe_finder/features/scanner/presentation/scanner_screen.dart';
import 'package:recipe_finder/features/settings/presentation/settings_screen.dart';
import 'package:recipe_finder/features/splash_screen/presentation/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: AppPaths.replaceInRouteName,
  routes: <AutoRoute>[
    AutoRoute(
      path: AppPaths.initialPath,
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: AppPaths.emptyPath,
          name: AppPaths.splashName,
          page: SplashScreen,
        ),
        AutoRoute(
          path: AppPaths.emptyPath,
          name: AppPaths.mainNavigationName,
          page: MainNavigationWidget,
          children: [
            AutoRoute(
              path: AppPaths.homePath,
              name: AppPaths.homeName,
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: AppPaths.emptyPath,
                  page: HomeScreen,
                ),
              ],
            ),
            AutoRoute(
              path: AppPaths.scannedProductsPath,
              name: AppPaths.scannedProductsName,
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: AppPaths.emptyPath,
                  page: ScannedProductsScreen,
                ),
              ],
            ),
            AutoRoute(
              path: AppPaths.settingsPath,
              name: AppPaths.settingsName,
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: AppPaths.emptyPath,
                  page: SettingsScreen,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: AppPaths.scannerPath,
          name: AppPaths.scannerName,
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: AppPaths.emptyPath,
              page: ScannerScreen,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
