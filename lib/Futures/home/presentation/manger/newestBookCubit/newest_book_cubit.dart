import 'package:bloc/bloc.dart';
import 'package:booky_app/Futures/home/Data/model/book_model/book_model.dart';
import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
import 'package:meta/meta.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchFeaturedBook();
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
