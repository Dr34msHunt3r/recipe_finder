import 'package:injectable/injectable.dart';
import 'package:recipe_finder/core/config/app/app_config.dart';
import 'package:recipe_finder/injectable/enviroment.dart';

@production
@Injectable(as: AppConfig)
class ProductionAppConfig extends AppConfig {
  ProductionAppConfig()
      : super(
          appTitle: "Production Recipe Finder",
        );
}
