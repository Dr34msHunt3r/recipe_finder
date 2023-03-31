import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_finder/injectable/enviroment.dart';
import 'package:recipe_finder/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  asExtension: false,
)
GetIt configureDependencies({
  String environment = EnvironmentName.development,
}) =>
    init(
      getIt,
      environment: environment,
    );
