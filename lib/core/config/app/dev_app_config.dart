import 'package:injectable/injectable.dart';
import 'package:recipe_finder/core/config/app/app_config.dart';
import 'package:recipe_finder/injectable/enviroment.dart';

@development
@Injectable(as: AppConfig)
class DevelopmentAppConfig extends AppConfig {
  DevelopmentAppConfig()
      : super(
          appTitle: "Development Recipe Finder",
        );
}
