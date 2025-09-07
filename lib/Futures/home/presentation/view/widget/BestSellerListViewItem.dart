import 'package:booky_app/core/utils/appRoute.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/style.dart';
import 'RatingBook.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.BookDetails);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: AspectRatio(
              aspectRatio: 2 / 3.2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
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
                    "Harry pottter and the Global of the Fire",
                    style: Style.textStyle20.copyWith(fontFamily: kGTSectra),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3),
                Text("J.K .Rowling", style: Style.textStyle14),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "19.99\$",
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
