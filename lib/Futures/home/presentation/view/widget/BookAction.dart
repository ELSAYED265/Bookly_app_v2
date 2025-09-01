import 'package:flutter/material.dart';

import '../../../../../core/widget/customBottum.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Custombuttom(
              text: "19.99\$",
              BackGroungColor: Colors.white,
              textColor: Colors.black,
              TopLeft: Radius.circular(15),
              BottomLeft: Radius.circular(15),
            ),
          ),
          Expanded(
            child: Custombuttom(
              text: "Free Review",
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
}
