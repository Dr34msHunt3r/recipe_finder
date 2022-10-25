import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:recipe_finder/common/widgets/main_navigation_widget.dart';
import 'package:recipe_finder/features/products/presentation/scanned_products_screen.dart';
import 'package:recipe_finder/features/scanner/presentation/scanner_screen.dart';
import 'package:recipe_finder/features/settings/presentation/settings_screen.dart';
import 'package:recipe_finder/features/splash_screen/presentation/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: '',
          name: 'SplashRouter',
          page: SplashScreen,
        ),
        AutoRoute(
          path: 'home',
          name: 'MainNavigationRouter',
          page: MainNavigationWidget,
          children: [
            AutoRoute(
              path: 'scanner',
              name: 'ScannerRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: '',
                  page: ScannerScreen,
                ),
              ],
            ),
            AutoRoute(
              path: 'scanned-products',
              name: 'ScannedProductsRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: '',
                  page: ScannedProductsScreen,
                ),
              ],
            ),
            AutoRoute(
              path: 'settings',
              name: 'SettingsRouter',
              page: EmptyRouterPage,
              children: [
                AutoRoute(
                  path: '',
                  page: SettingsScreen,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
