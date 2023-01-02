import 'package:injectable/injectable.dart';
import 'package:recipe_finder/domain/analytics/analytics_repository.dart';

@injectable
class EventTrackerUseCase {
  EventTrackerUseCase({
    required this.analyticsRepository,
  });

  final AnalyticsRepository analyticsRepository;

  Future<void> trackEvent({
    required EventTrackerNames eventName,
    Map<String, Object?>? parameters,
  }) async {
    await analyticsRepository.trackEvent(
      name: eventName.rawName,
      parameters: parameters,
    );
  }
}

enum EventTrackerNames {
  appInitialized('App_successfully_initialized');

  const EventTrackerNames(this.rawName);

  final String rawName;
}
