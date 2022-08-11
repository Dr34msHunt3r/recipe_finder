import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_finder/core/config/app_config.dart';

extension BuildContextExt on BuildContext {
  AppConfig get appConfig => watch<AppConfig>();
}
