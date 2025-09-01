import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'BookAction.dart';
import 'CustomBookImage.dart';
import 'RatingBook.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text(
          "The Jungle Book",
          style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          "Rudyaing Kliping",
          style: Style.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        SizedBox(height: 18),
        RatingBook(),
        const SizedBox(height: 37),
        BookAction(),
      ],
    );
  }
}
