import 'package:dartz/dartz.dart';
import 'package:food_deals/app/product/domain/repositories/product_repository.dart';
import 'package:food_deals/base/errors/failure.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Either<Failure, List<String>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}