import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_finder/data_source/crashlytics/error_tracker.dart';
import 'package:recipe_finder/data_source/crashlytics/trackers/firebase_error_tracker.dart';
import 'package:recipe_finder/data_source/crashlytics/trackers/std_out_error_tracker.dart';

@module
abstract class CrashlyticsModule {
  FirebaseCrashlytics getFirebaseCrashlytics() => FirebaseCrashlytics.instance;

  List<ErrorTracker> getErrorTrackers(
    FirebaseErrorTracker firebaseErrorTracker,
    StdOutErrorTracker stdOutErrorTracker,
  ) {
    final trackers = <ErrorTracker>[
      firebaseErrorTracker,
    ];

    trackers.add(stdOutErrorTracker);

    return trackers;
  }
}
