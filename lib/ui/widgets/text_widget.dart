import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;

  const MyText(
    this.title, {
    super.key,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'SFProDisplay',
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        overflow: TextOverflow.fade,
      ),
    );
  }
}
