import 'package:booky_app/constant.dart';
import 'package:booky_app/core/utils/assets.dart';
import 'package:booky_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BestSellerListView.dart';
import 'BestSellerListViewItem.dart';
import 'customAppBar.dart';
import 'featureBookListView.dart';
import 'CustomBookImage.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomAppBar(),
              ),
              FeatureBookListView(),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Best Seller", style: Style.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBookListView(),
          SizedBox(height: 40),
          Text("Best Seller", style: Style.textStyle18),
          SizedBox(height: 20),
          BestSellerListView(),
        ],
      ),
    );
  }
}

//بص ياسيدس انا بتستخدم sliverfillRemaining عشان اعمل اكثر من srolling
//انا لو استخدمت listview مع colum لازم اعمل expanned
//لو استخدمتSliverToBoxAdapter l مع listview لازم اعمل shinkRap=true
