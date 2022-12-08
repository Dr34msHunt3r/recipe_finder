import 'package:flutter/material.dart';
import 'package:recipe_finder/core/l10n/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this);
}
