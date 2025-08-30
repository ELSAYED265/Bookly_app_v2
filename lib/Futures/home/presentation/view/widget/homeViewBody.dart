import 'package:booky_app/core/utils/assets.dart';
import 'package:booky_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customAppBar.dart';
import 'featureBookListView.dart';
import 'featureLitsViewItems.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBookListView(),
          SizedBox(height: 40),
          Text("Best Seller", style: Style.titleMidum),
        ],
      ),
    );
  }
}
