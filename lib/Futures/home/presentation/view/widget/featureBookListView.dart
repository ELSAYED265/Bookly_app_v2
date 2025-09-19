import 'package:booky_app/Futures/home/Data/model/Book_Model/book_model.dart';
import 'package:booky_app/Futures/home/presentation/manger/featureBookCubit/feature_book_cubit.dart';
import 'package:booky_app/core/widget/CustomErrorMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/appRoute.dart';
import 'CustomBookImage.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        if (state is FeatureBookFailer) {
          return CustomErrorMessage(ErrorMessage: state.errorMessage);
        } else if (state is FeatureBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              separatorBuilder: (context, i) => SizedBox(width: 8),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(
                      context,
                    ).push(AppRouter.BookDetails, extra: state.books[i]);
                  },
                  child: CustomBookImage(
                    imageUrl:
                        state.books[i].volumeInfo!.imageLinks?.thumbnail ?? "",
                  ),
                );
              },
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
