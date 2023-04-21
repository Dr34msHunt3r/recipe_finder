import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:recipe_finder/core/extension/app_router.dart';
import 'package:recipe_finder/core/routing/app_router.gr.dart';
import 'package:recipe_finder/features/splash_screen/presentation/cubit/splash_cubit.dart';
import 'package:recipe_finder/injectable/injectable.dart';

import 'core/l10n/app_localizations.dart';
import 'core/routing/app_router.dart';

class App extends StatelessWidget {
  final WidgetsBinding widgetBinding;
  AppRouter get router => getIt.get<AppRouter>();

  App(this.widgetBinding, {Key? key}) : super(key: key) {
    widgetBinding.deferFirstFrame();
  }

  Future<void> _preloadImageAssets(BuildContext context) async {}

  @override
  Widget build(BuildContext context) {
    final splashCubit =
        getIt<SplashCubit>(param1: [LoadingTask(_preloadImageAssets)]);

    _observeSplashStates(
      splashCubit: splashCubit,
    );

    return MultiProvider(
      providers: [
        BlocProvider<SplashCubit>(
          create: (_) => splashCubit,
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: router.delegate(),
      ),
    );
  }

  void _observeSplashStates({
    required SplashCubit splashCubit,
  }) {
    splashCubit.stream.listen((state) => state.maybeWhen(
          orElse: () => null,
          splashReady: () => widgetBinding.allowFirstFrame(),
          showWelcomePage: () => router.pushAndForget(
            const MainNavigationRouter(),
          ),
        ));
  }
}
