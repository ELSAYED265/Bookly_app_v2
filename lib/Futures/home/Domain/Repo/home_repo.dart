import 'package:booky_app/Futures/home/Domain/Entities/BookEntites.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Fail, List<BookEntities>>> fetchFeatureBook();
  Future<Either<Fail, List<BookEntities>>> fetchNewsestBook();
}
