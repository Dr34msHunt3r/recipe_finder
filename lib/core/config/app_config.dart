import 'package:flutter/material.dart';

/// Basic information about App flavors
class AppConfig {
  AppConfig({
    required this.appTitle,
  }) {
    instance = this;
  }

  static AppConfig? instance;
  final String appTitle;

  static AppConfig of(BuildContext context) {
    if (instance != null) {
      return instance!;
    }
    throw "No config defined";
  }
}
