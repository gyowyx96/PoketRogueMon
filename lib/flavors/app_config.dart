import 'package:poketroguemon/flavors/flavor.dart';

class AppConfig {
  static Flavor flavor = Flavor.dev;

  static bool get isDev => flavor == Flavor.dev;
  static bool get isProd => flavor == Flavor.prod;
}