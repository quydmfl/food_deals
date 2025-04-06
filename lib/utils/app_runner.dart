import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:food_deals/app/app.dart';
import 'package:food_deals/config/languages.dart';
import 'package:food_deals/utils/app_container.dart';

class AppRunner {
  AppRunner._();

  static final AppRunner instance = AppRunner._();

  Future<void> run() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      _initializeDependencies(),
      _initServices(),
      _appConfigurations(),
    ]);

    runApp(const App());
  }

  Future<void> _initializeDependencies() async {
    await EasyLocalization.ensureInitialized();
    await AppContainer.initialize();
  }
  
  Future<void> _initServices() async {
    // TODO: register service local or firebase in here.
  }

  Future<void> _appConfigurations() async {
    Intl.defaultLocale = Languages.defaultLocaleString;
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}