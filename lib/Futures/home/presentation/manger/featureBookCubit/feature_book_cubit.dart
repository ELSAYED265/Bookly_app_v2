import 'package:bloc/bloc.dart';
import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
import 'package:meta/meta.dart';

import '../../../Data/model/Book_Model/book_model.dart';

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
