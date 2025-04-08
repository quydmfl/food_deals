import 'package:food_deals/app/product/data/repositories/product_repository_impl.dart';
import 'package:food_deals/app/product/domain/repositories/product_repository.dart';
import 'package:food_deals/base/injection/injection_container.dart';

class ProductContainer extends InjectionContainer {
  ProductContainer._internal();

  static final ProductContainer instance = ProductContainer._internal();

  @override
  Future<void> init() async {
    // Injector dependencies
    getIt.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(),
    );
  }
}