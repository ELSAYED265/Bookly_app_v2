import 'package:booky_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({
    super.key,
    required this.textColor,
    required this.BackGroungColor,
    this.BottomLeft,
    this.BottomRight,
    this.TopLeft,
    this.TopRight,
    required this.text,
    this.fontsize,
  });
  final Color textColor;
  final Color BackGroungColor;
  final Radius? BottomLeft;
  final Radius? BottomRight;
  final Radius? TopLeft;
  final Radius? TopRight;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: BackGroungColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: BottomLeft ?? Radius.circular(0),
              bottomRight: BottomRight ?? Radius.circular(0),
              topLeft: TopLeft ?? Radius.circular(0),
              topRight: TopRight ?? Radius.circular(0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Style.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
