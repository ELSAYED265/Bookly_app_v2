import 'package:booky_app/Futures/home/Data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failer.dart';

abstract class HomeRepo {
  Future<Either<Failer, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBook();
}
