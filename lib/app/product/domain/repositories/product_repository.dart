import 'package:dartz/dartz.dart';
import 'package:food_deals/base/errors/failure.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<String>>> getProducts();
}