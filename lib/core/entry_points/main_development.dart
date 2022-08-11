import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:recipe_finder/app.dart';
import 'package:recipe_finder/core/config/app_config.dart';
import 'package:recipe_finder/injectable/injectable.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initialization();

  runApp(
    Provider<AppConfig>(
      create: (context) => AppConfig(
        appTitle: "Recipe Finder Dev",
      ),
      lazy: false,
      child: App(widgetsBinding),
    ),
  );
}

Future initialization() async {
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
}
