import 'package:booky_app/core/error/failer.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, param> {
  Future<Either<Fail, Type>> call([param param]);
}
