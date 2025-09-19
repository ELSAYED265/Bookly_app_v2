import 'package:booky_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.ErrorMessage});
  final String ErrorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(ErrorMessage, style: Style.textStyle16);
  }
}
