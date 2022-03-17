import 'package:flutter/material.dart';
import 'package:relax/themes/i_app_colors.dart';

abstract class AppBarThemeElement {
  static AppBarTheme get appBarLightTheme => AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.lightSecondaryColor,
        centerTitle: true,
      );
  static AppBarTheme get appBarDarkTheme => AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.darkBgColor,
        centerTitle: true,
      );
}
