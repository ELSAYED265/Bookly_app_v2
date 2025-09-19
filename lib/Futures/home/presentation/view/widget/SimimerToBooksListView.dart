import 'package:booky_app/Futures/home/presentation/manger/SimilarBooksCubit/similar_book_cubit.dart';
import 'package:booky_app/core/widget/CustomErrorMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CustomBookImage.dart';

class SimimerToBooksListView extends StatelessWidget {
  const SimimerToBooksListView({super.key});
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .13,
            child: ListView.separated(
              separatorBuilder: (context, i) => SizedBox(width: 8),
              scrollDirection: Axis.horizontal,
              itemCount: state.book.length,
              itemBuilder: (context, i) {
                return CustomBookImage(
                  imageUrl:
                      state.book[i].volumeInfo?.imageLinks?.thumbnail ?? '',
                );
              },
            ),
          );
        } else if (state is SimilarBookFalier) {
          return CustomErrorMessage(ErrorMessage: state.errMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
