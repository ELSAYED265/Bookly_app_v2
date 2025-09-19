import 'package:bloc/bloc.dart';
import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
import 'package:meta/meta.dart';

import '../../../Data/model/Book_Model/book_model.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failer) {
        emit(NewestBookFailer(failer.errorMessage));
      },
      (books) {
        emit(NewestBookSuccess(books));
      },
    );
  }
}
