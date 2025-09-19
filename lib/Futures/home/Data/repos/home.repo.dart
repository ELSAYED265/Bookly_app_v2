import 'package:dartz/dartz.dart';

import '../../../../core/error/failer.dart';
import '../model/Book_Model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failer, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBook();
  Future<Either<Failer, List<BookModel>>> fetchSimilarBook({
    required String categories,
  });
}
