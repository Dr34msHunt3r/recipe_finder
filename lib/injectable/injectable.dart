import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_finder/injectable/enviroment.dart';

import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies({
  String environment = EnvironmentName.development,
}) async =>
    $initGetIt(
      getIt,
      environment: environment,
    );
