import 'package:auto_route/annotations.dart';
import 'package:recipe_finder/features/products/presentation/scanned_products_screen.dart';
import 'package:recipe_finder/features/scanner/presentation/scanner_screen.dart';
import 'package:recipe_finder/features/splash_screen/presentation/splash_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(page: ScannerScreen),
    AutoRoute(page: ScannedProductsScreen)
  ],
)
class $AppRouter {}
