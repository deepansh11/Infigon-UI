import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double size;
  final bool isShadow;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Color customColor;

  const CustomText(
      {Key? key,
      required this.text,
      this.size = 20,
      this.textAlign = TextAlign.left,
      this.isShadow = true,
      this.fontWeight = FontWeight.bold,
      this.customColor = Colors.white,
      this.fontFamily = 'Roboto'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          color: customColor,
          fontFamily: fontFamily,
          shadows: [
            isShadow
                ? Shadow(
                    blurRadius: 7.0,
                    offset: Offset(3.0, 3.0),
                  )
                : Shadow(),
          ]),
    );
  }
}
