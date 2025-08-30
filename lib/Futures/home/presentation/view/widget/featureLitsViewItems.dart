import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeatureListViewItems extends StatelessWidget {
  const FeatureListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
