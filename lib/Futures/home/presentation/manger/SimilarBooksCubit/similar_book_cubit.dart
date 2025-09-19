import 'package:bloc/bloc.dart';
import 'package:booky_app/Futures/home/Data/model/Book_Model/book_model.dart';
import 'package:meta/meta.dart';

import '../../../Data/repos/home.repo.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
  HomeRepo homeRepo;
  Future<void> fetchSimilarBook({required String categores}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimilarBook(categories: categores);
    result.fold(
      (failer) {
        emit(SimilarBookFalier(failer.errorMessage));
      },
      (books) {
        emit(SimilarBookSuccess(books));
      },
    );
  }
}
