import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:recipe_finder/core/extension/app_router.dart';
import 'package:recipe_finder/core/extension/build_context.dart';
import 'package:recipe_finder/core/routing/app_router.gr.dart';
import 'package:recipe_finder/features/main_navigation/presentation/cubit/main_navigation_cubit.dart';
import 'package:recipe_finder/features/splash_screen/presentation/cubit/splash_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

import 'core/l10n/app_localizations.dart';

class App extends StatelessWidget {
  App(this.widgetBinding, {Key? key}) : super(key: key) {
    widgetBinding.deferFirstFrame();
    getIt.registerSingleton<AppRouter>(AppRouter());
  }

  final WidgetsBinding widgetBinding;
  AppRouter get router => getIt<AppRouter>();

  Future<void> _preloadImageAssets(BuildContext context) async {}

  @override
  Widget build(BuildContext context) {
    final appConfig = context.appConfig;
    final splashCubit =
        getIt<SplashCubit>(param1: [LoadingTask(_preloadImageAssets)]);
    final mainNavigationCubit = getIt<MainNavigationCubit>();

    _observeSplashStates(
      splashCubit: splashCubit,
    );

    _observeMainNavigationStates(
      mainNavigationCubit: mainNavigationCubit,
    );

    return MultiProvider(
      providers: [
        BlocProvider<SplashCubit>(
          create: (_) => splashCubit,
        ),
        BlocProvider<MainNavigationCubit>(
          create: (_) => mainNavigationCubit,
        ),
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: appConfig.appTitle,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routeInformationParser: router.defaultRouteParser(),
          routerDelegate: router.delegate()),
    );
  }

  void _observeSplashStates({
    required SplashCubit splashCubit,
  }) {
    splashCubit.stream.listen((state) {
      state.maybeWhen(
        orElse: () => null,
        splashReady: () => widgetBinding.allowFirstFrame(),
        showWelcomePage: () => router.pushAndForget(const ScannerRoute()),
      );
    });
  }

  void _observeMainNavigationStates({
    required MainNavigationCubit mainNavigationCubit,
  }) {
    mainNavigationCubit.stream.listen((state) {
      state.maybeWhen(
          orElse: () => null,
          showScannedProducts: () => router.push(const ScannedProductsRoute()));
    });
  }
}
