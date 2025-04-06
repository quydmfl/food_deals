import 'package:food_deals/core/env/app_config.dart';
import 'package:food_deals/core/env/env.dart';
import 'package:food_deals/utils/app_runner.dart';

void main() {
  AppConfig.initialize(env: Env.prod());
  AppRunner.instance.run();
}

