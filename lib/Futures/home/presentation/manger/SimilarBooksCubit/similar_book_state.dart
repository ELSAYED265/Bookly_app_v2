part of 'similar_book_cubit.dart';

@immutable
sealed class SimilarBookState {}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookLoading extends SimilarBookState {}

final class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> book;

  SimilarBookSuccess(this.book);
}

final class SimilarBookFalier extends SimilarBookState {
  final String errMessage;
  SimilarBookFalier(this.errMessage);
}
