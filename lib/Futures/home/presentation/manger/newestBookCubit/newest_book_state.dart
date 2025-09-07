part of 'newest_book_cubit.dart';

@immutable
sealed class NewestBookState {}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookSuccess extends NewestBookState {
  List<BookModel> books;
  NewestBookSuccess(this.books);
}

final class NewestBookFailer extends NewestBookState {
  final String errorMesage;
  NewestBookFailer(this.errorMesage);
}
