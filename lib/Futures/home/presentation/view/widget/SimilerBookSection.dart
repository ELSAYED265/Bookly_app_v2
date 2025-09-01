import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'SimimerToBooksListView.dart';

class SimilerBookSection extends StatelessWidget {
  const SimilerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You Can Also Like",
          style: Style.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        SimimerToBooksListView(),
      ],
    );
  }
}
