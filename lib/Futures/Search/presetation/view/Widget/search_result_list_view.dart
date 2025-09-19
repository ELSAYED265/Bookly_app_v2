import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widget/BestSellerListViewItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("data"),
          //BookListViewItem(),
        );
      },
    );
  }
}
