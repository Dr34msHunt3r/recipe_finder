import 'package:auto_route/annotations.dart';
import 'package:recipe_finder/features/scanner_screen/scanner_screen.dart';
import 'package:recipe_finder/features/splash_screen/presentation/splash_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(page: ScannerScreen),
  ],
)
class $AppRouter {}
