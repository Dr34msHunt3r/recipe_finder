import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_finder/data_source/analytics/analytics_tracker.dart';
import 'package:recipe_finder/data_source/analytics/trackers/firebase_analytics_tracker.dart';
import 'package:recipe_finder/data_source/analytics/trackers/std_out_analytics_tracker.dart';

@module
abstract class AnalyticsModule {
  FirebaseAnalytics getFirebaseAnalytics() => FirebaseAnalytics.instance;

  List<AnalyticsTracker> getAnalyticsTrackers(
    FirebaseAnalyticsTracker firebaseAnalyticsTracker,
    StdOutAnalyticsTracker stdOutAnalyticsTracker,
  ) {
    final trackers = <AnalyticsTracker>[
      firebaseAnalyticsTracker,
    ];

    trackers.add(stdOutAnalyticsTracker);

    return trackers;
  }
}
