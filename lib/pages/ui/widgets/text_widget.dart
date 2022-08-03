import 'package:flutter/material.dart';
import 'package:menuapp/pages/ui/general/colors.dart';
import 'package:menuapp/pages/ui/general/fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final double? height;

  TextWidget({
    required this.text,
    required this.fontSize,
    required this.color,
    this.fontWeight,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        height: height,
      ),
    );
  }
}

class H1 extends StatelessWidget {
  final String text;

  H1({required this.text});

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      fontSize: kH1Size,
      color: KBrandPrimaryColor,
      fontWeight: FontWeight.w600,
      height: 1.1,
    );
  }
}

class TextNormal extends StatelessWidget {
  final String text;

  TextNormal({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget(
      text: text,
      fontSize: textNormalSize,
      color: KBrandPrimaryColor,
    );
  }
}
