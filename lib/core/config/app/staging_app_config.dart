import 'package:injectable/injectable.dart';
import 'package:recipe_finder/core/config/app/app_config.dart';
import 'package:recipe_finder/injectable/enviroment.dart';

@staging
@Injectable(as: AppConfig)
class StagingAppConfig extends AppConfig {
  StagingAppConfig()
      : super(
          appTitle: "Staging Recipe Finder",
        );
}
