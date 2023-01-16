// Flutter imports:
import 'package:flutter/material.dart';

TextStyle getBaseTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextDecoration? decoration,
}) =>
    TextStyle(
      color: color ?? Colors.grey[800],
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
      decoration: decoration,
    );
