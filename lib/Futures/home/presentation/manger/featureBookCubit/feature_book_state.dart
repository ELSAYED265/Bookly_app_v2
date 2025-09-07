part of 'feature_book_cubit.dart';

@immutable
sealed class FeatureBookState {}

final class FeatureBookInitial extends FeatureBookState {}

final class FeatureBookLoading extends FeatureBookState {}

final class FeatureBookSuccess extends FeatureBookState {
  List<BookModel> books;
  FeatureBookSuccess(this.books);
}

final class FeatureBookFailer extends FeatureBookState {
  final String errorMessage;
  FeatureBookFailer(this.errorMessage);
}
