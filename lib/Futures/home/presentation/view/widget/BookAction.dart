import 'package:booky_app/Futures/home/Data/model/Book_Model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/funcation/launch_url.dart';
import '../../../../../core/widget/customBottum.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Custombuttom(
              text: "Free",
              BackGroungColor: Colors.white,
              textColor: Colors.black,
              TopLeft: Radius.circular(15),
              BottomLeft: Radius.circular(15),
            ),
          ),
          Expanded(
            child: Custombuttom(
              onPressed: () async {
                CustomLaunchUrl(context, bookModel.volumeInfo?.previewLink);
              },
              text: getMessage(bookModel),
              fontsize: 16,
              BackGroungColor: Color(0xffEF8262),
              textColor: Colors.white,
              TopRight: Radius.circular(15),
              BottomRight: Radius.circular(15),
            ),
          ),
        ],
      ),
    );
  }

  String getMessage(BookModel book) {
    if (book.volumeInfo?.previewLink == null) {
      return "Not available";
    } else {
      return "Free Review";
    }
  }
}
