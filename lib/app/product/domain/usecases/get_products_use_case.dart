import 'package:dartz/dartz.dart';
import 'package:food_deals/app/product/domain/entities/product.dart';
import 'package:food_deals/app/product/domain/repositories/product_repository.dart';
import 'package:food_deals/base/domain/usecases/base_usecase.dart';
import 'package:food_deals/base/domain/usecases/params.dart';
import 'package:food_deals/base/errors/failure.dart';

class GetProductsUseCase extends BaseUseCase<NoParams, List<Product>> {
  final ProductRepository repository;

  GetProductsUseCase(this.repository);

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) {
    return repository.getProducts();
  }
}