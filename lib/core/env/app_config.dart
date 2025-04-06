import 'package:food_deals/core/env/env.dart';

class AppConfig {
  Env env = Env.dev();
  // Define more config properties

  AppConfig._internal();

  factory AppConfig.initialize({
    required Env env,
  }) {
    instance.env = env;
    return instance;
  }

  static final AppConfig instance = AppConfig._internal();
}