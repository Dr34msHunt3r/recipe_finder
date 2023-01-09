/// Contains basic Application information that differ between App flavors
abstract class AppConfig {
  AppConfig({
    required this.appTitle,
  });

  final String appTitle;
}
