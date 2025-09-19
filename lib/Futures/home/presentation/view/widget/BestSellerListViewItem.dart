import 'package:booky_app/Futures/home/Data/model/Book_Model/book_model.dart';
import 'package:booky_app/Futures/home/presentation/view/widget/CustomBookImage.dart';
import 'package:booky_app/core/utils/appRoute.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/style.dart';
import 'RatingBook.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.BookDetails, extra: books);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: CustomBookImage(
              imageUrl:
                  books.volumeInfo!.imageLinks?.thumbnail ??
                  AssetsData.testImage,
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    books.volumeInfo!.title.toString(),
                    style: Style.textStyle20.copyWith(fontFamily: kGTSectra),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3),
                Text(books.volumeInfo!.authors![0], style: Style.textStyle14),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "free",
                      style: Style.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    RatingBook(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
