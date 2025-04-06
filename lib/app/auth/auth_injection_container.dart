import 'package:food_deals/base/injection/injection_container.dart';

class AuthInjectionContainer extends InjectionContainer {
  AuthInjectionContainer._internal();

  static final AuthInjectionContainer instance = AuthInjectionContainer._internal();

  @override
  Future<void> init() async {
    // TODO: Add your initialization logic here
  }
}