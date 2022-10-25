


import 'app_localizations.dart';

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get scannedProducts => 'Scanned Products';

  @override
  String get settings => 'Settings';

  @override
  String get noAccessToCamera => 'No access to camera';

  @override
  String get weDoNotHaveAccessToYourCamera => 'We don\'t have access to your camera. ';

  @override
  String get youCanEnableAccessIn => 'You can enable access in ';

  @override
  String get privacySettings => 'privacy settings';

  @override
  String get cameraPermission => 'Camera permission';

  @override
  String hasBeenAdded(String product) {
    return '$product has been added';
  }

  @override
  String get home => 'Home';

  @override
  String get recipes => 'Recipes';
}
