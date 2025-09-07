import 'package:bloc/bloc.dart';
import 'package:booky_app/Futures/home/Data/model/book_model/book_model.dart';
import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
import 'package:meta/meta.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBookLoading());
    var result = await homeRepo.fetchFeaturedBook();
    result.fold(
      (failer) {
        emit(FeatureBookFailer(failer.errorMessage));
      },
      (books) {
        emit(FeatureBookSuccess(books));
      },
    );
  }
}
