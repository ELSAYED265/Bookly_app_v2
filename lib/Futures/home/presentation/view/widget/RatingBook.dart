import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 14),
        SizedBox(width: 6.3),
        Text(
          "4.5",
          style: Style.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 5),
        Text(
          "(245)",
          style: Style.textStyle14.copyWith(
            color: Color(0xff707070),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
