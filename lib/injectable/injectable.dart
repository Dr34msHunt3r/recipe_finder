import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_finder/injectable/enviroment.dart';
import 'package:recipe_finder/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  asExtension: false,
)
Future<void> configureDependencies({
  String environment = EnvironmentName.development,
}) async =>
    getIt.init(
      getIt,
      environment: environment,
    );
