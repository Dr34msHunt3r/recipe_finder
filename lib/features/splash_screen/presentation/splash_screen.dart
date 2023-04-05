import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/core/config/app_assets.dart';
import 'package:recipe_finder/core/config/app_paths.dart';
import 'package:recipe_finder/features/splash_screen/presentation/cubit/splash_cubit.dart';

@RoutePage(name: AppPaths.splashName)
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SplashCubit>().appStartup(context);
    return const Scaffold(body: _Body());
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white70,
          ],
        ),
      ),
      constraints: const BoxConstraints.expand(),
      child: Image.asset(
        AppAssets.splashImage,
        fit: BoxFit.none,
        alignment: Alignment.center,
      ),
    );
  }
}
