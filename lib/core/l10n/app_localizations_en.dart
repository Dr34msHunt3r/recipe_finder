


import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

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
}
