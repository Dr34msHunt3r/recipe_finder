import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:recipe_finder/core/config/app_dimens.dart';
import 'package:recipe_finder/core/extension/build_context.dart';
import 'package:recipe_finder/core/routing/app_router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainNavigationWidget extends StatelessWidget {
  const MainNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => salomonBottomBarMenu(context);

  Widget salomonBottomBarMenu(BuildContext context) => AutoTabsScaffold(
        routes: const [
          ScannerRouter(),
          ScannedProductsRouter(), // TODO: Exchange ScannedProductsRouter for RecipesRouter
          SettingsRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SalomonBottomBar(
            margin: const EdgeInsets.symmetric(
              horizontal: AppDimens.extraLargerSpace_40,
              vertical: AppDimens.subLargerSpace_20,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.home,
                  size: AppDimens.extraLargeSpace_32,
                ),
                title: Text(context.localizations.home),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.receipt,
                  size: AppDimens.extraLargeSpace_32,
                ),
                title: Text(context.localizations.recipes),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.settings,
                  size: AppDimens.extraLargeSpace_32,
                ),
                title: Text(context.localizations.settings),
              ),
            ],
          );
        },
      );
}
