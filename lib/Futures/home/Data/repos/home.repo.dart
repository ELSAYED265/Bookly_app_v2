import 'package:dartz/dartz.dart';

import '../../../../core/error/failer.dart';

abstract class HomeRepo {
  Future<Either<Failer, List>> fetchNewestBooks();
  Future<Either<Failer, List>> fetchFeaturedBook();
}
