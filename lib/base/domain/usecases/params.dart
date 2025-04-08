import 'package:equatable/equatable.dart';

mixin Params {}

// No param, pass this object
class NoParams extends Equatable with Params {
  @override
  List<Object?> get props => [];
}