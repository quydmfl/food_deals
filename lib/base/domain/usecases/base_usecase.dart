import 'package:dartz/dartz.dart';
import 'package:food_deals/base/domain/usecases/params.dart';
import 'package:food_deals/base/errors/failure.dart';

/// P is the paramater object, T is the return type of usecase
/// This UseCase is the contract betweens the presentation and domain layer
/// The presentation call the UseCase with Params to the domain and domain return
/// Either<Failure,ReturnType> to the presentation
abstract class BaseUseCase<P extends Params, ReturnType> {
  Future<Either<Failure, ReturnType>> call(P params);
}