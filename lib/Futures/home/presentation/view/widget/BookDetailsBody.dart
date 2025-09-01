import 'package:booky_app/Futures/home/presentation/view/widget/CustomBookImage.dart';
import 'package:booky_app/core/utils/style.dart';
import 'package:booky_app/core/widget/customBottum.dart';
import 'package:flutter/material.dart';

import 'BookAction.dart';
import 'BookDetailSection.dart';
import 'CustomBookDetailsAppbar.dart';
import 'RatingBook.dart';
import 'SimilerBookSection.dart';
import 'SimimerToBooksListView.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppbar(),
                BookDetailSection(),
                Expanded(child: const SizedBox(height: 50)),
                SimilerBookSection(),
                const SizedBox(height: 14),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
