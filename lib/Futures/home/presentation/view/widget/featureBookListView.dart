import 'package:flutter/material.dart';

import 'featureLitsViewItems.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: ListView.separated(
        separatorBuilder: (context, i) => SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, i) {
          return FeatureListViewItems();
        },
      ),
    );
  }
}
