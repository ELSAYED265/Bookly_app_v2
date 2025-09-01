import 'package:flutter/material.dart';

import 'CustomBookImage.dart';

class SimimerToBooksListView extends StatelessWidget {
  const SimimerToBooksListView({super.key});
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .13,
      child: ListView.separated(
        separatorBuilder: (context, i) => SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, i) {
          return CustomBookImage();
        },
      ),
    );
  }
}
