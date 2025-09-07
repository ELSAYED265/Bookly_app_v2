import 'package:booky_app/Futures/Search/presetation/view/Widget/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/style.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextForm(),
            const SizedBox(height: 14),
            Text("Best Seller", style: Style.textStyle18),
            const SizedBox(height: 16),
            Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}

class CustomSearchTextForm extends StatelessWidget {
  const CustomSearchTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Opacity(
            opacity: .7,
            child: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ),
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
