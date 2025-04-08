import 'package:food_deals/app/product/product_container.dart';

class AppContainer {
  AppContainer._internal();

  static Future<void> initialize() async {
    // Injector dependencies
    await ProductContainer.instance.init();
  }
}