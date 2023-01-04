import 'package:injectable/injectable.dart';
import 'package:recipe_finder/domain/analytics/analytics_repository.dart';

@injectable
class ScreenTrackerUseCase {
  ScreenTrackerUseCase({
    required this.analyticsRepository,
  });

  final AnalyticsRepository analyticsRepository;

  Future<void> trackScreen({
    required ScreenTrackerNames screenName,
    String? screenClass,
  }) async {
    await analyticsRepository.trackScreen(
      screenName: screenName.rawName,
      screenClass: screenClass,
    );
  }
}

enum ScreenTrackerNames {
  unclassified('Unclassified Screen'),
  splash('SplashScreen'),
  home('HomeScreen'),
  settings('SettingsScreen');

  const ScreenTrackerNames(this.rawName);

  final String rawName;
}
