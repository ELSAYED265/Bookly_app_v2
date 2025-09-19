import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
import 'package:booky_app/core/error/failer.dart';
import 'package:booky_app/core/utils/apiServices.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';

import '../model/Book_Model/book_model.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;
  //List<BookModel> books = [];

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failer, List<BookModel>>> fetchNewestBooks() async {
    try {
      List<BookModel> newsBooks = [];
      var data = await apiService.get(
        endpoint:
            'volumes?q=data&key=AIzaSyAIcKQNFfLc5UN8IxgIo9zNb09AHDZhlpY&filtering=free-ebooks',
      );
      for (var items in data['items']) {
        newsBooks.add(BookModel.fromJson(items));
      }
      return Right(newsBooks);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailer.fromDioError(e));
      }
      return Left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBook() async {
    try {
      List<BookModel> featureBook = [];
      var data = await apiService.get(
        endpoint:
            'volumes?q=programming&key=AIzaSyAIcKQNFfLc5UN8IxgIo9zNb09AHDZhlpY&filtering=free-ebooks',
      );
      for (var items in data['items']) {
        featureBook.add(BookModel.fromJson(items));
      }
      return Right(featureBook);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailer.fromDioError(e));
      }
      return Left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failer, List<BookModel>>> fetchSimilarBook({
    required String categories,
  }) async {
    try {
      List<BookModel> featureBook = [];
      var data = await apiService.get(
        endpoint:
            'volumes?q=programming&key=AIzaSyAIcKQNFfLc5UN8IxgIo9zNb09AHDZhlpY&filtering=free-ebooks',
      );
      for (var items in data['items']) {
        featureBook.add(BookModel.fromJson(items));
      }
      return Right(featureBook);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailer.fromDioError(e));
      }
      return Left(ServerFailer(e.toString()));
    }
  }
}
