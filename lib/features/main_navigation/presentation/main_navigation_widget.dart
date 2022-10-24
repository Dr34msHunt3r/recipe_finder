import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
          ScannedProductsRouter(),
          SettingsRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return SalomonBottomBar(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.document_scanner_rounded,
                  size: 30,
                ),
                title: const Text('Scanner'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.assignment_turned_in_outlined,
                  size: 30,
                ),
                title: Text(context.localizations.scannedProducts),
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ),
                title: Text(context.localizations.settings),
              )
            ],
          );
        },
      );
}
