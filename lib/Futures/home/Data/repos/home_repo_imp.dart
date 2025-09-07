import 'package:booky_app/Futures/home/Data/model/book_model/book_model.dart';
import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
import 'package:booky_app/core/error/failer.dart';
import 'package:booky_app/core/utils/apiServices.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;
  List<BookModel> books = [];

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failer, List>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?q=programming&key=AIzaSyAIcKQNFfLc5UN8IxgIo9zNb09AHDZhlpY&filtering=free-ebooks&sorting=newest',
      );
      for (var items in data['items']) {
        books.add(BookModel.fromJson(items));
      }
      return Right(books);
    } catch (e) {
      if (e is DioError) {
        Left(ServerFailer.fromDioError(e));
      }
      return Left(ServerFailer(e.toString()));
    }
  }

  @override
  Future<Either<Failer, List>> fetchFeaturedBook() {
    // TODO: implement fetchFeaturedBook
    throw UnimplementedError();
  }
}
