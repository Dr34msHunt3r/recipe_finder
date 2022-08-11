import 'package:auto_route/auto_route.dart';
import 'package:recipe_finder/core/routing/app_router.gr.dart';

extension AppRouterExt on AppRouter {
  Future<void> pushAndForget(PageRouteInfo route) => replaceAll([route]);
}
