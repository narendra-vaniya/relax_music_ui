import 'package:flutter/material.dart';
import 'package:relax/themes/i_app_colors.dart';

abstract class TextThemeElement {
  static TextTheme get lightTextTheme => TextTheme(
        headline1: TextStyle(
            color: AppColors.darkBgColor,
            fontSize: 32,
            fontWeight: FontWeight.w900),
        headline2: TextStyle(
            color: AppColors.darkBgColor,
            fontSize: 26,
            fontWeight: FontWeight.w700),
        subtitle1: TextStyle(
            color: AppColors.darkBgColor,
            fontSize: 20,
            fontWeight: FontWeight.w500),
        bodyText1: TextStyle(
            color: AppColors.darkBgColor,
            fontSize: 15,
            fontWeight: FontWeight.w400),
      );

  static TextTheme get darkTextTheme => TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 26, fontWeight: FontWeight.w800),
        headline2: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
        subtitle1: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
        bodyText1: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
      );
}
