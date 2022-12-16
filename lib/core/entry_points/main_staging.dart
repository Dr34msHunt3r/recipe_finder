import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:recipe_finder/app.dart';
import 'package:recipe_finder/bootstrap.dart';
import 'package:recipe_finder/core/config/firebase/firebase_config.dart';
import 'package:recipe_finder/injectable/enviroment.dart';
import 'package:recipe_finder/injectable/injectable.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(
    environment: EnvironmentName.staging,
  );
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await initialization();
  await configureFirebaseApp();
  await bootstrap(
    () => App(widgetsBinding),
  );
}

Future initialization() async {
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();
}
