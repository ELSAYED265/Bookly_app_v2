import 'package:booky_app/Futures/home/Data/model/Book_Model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'BookAction.dart';
import 'CustomBookImage.dart';
import 'RatingBook.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookImage(
            imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          book.volumeInfo?.title ?? '',
          style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          book.volumeInfo!.authors?[0] ?? '',
          style: Style.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        SizedBox(height: 18),
        RatingBook(),
        const SizedBox(height: 37),
        BookAction(bookModel: book),
      ],
    );
  }
}
