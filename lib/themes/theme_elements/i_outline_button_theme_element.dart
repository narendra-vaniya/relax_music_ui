import 'package:flutter/material.dart';
import 'package:relax/themes/i_app_colors.dart';

abstract class OutlineButtonThemeElement {
  static OutlinedButtonThemeData get outlineButtonDarkTheme =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all(AppColors.darkShadowColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: AppColors.primaryColor),
          ),
          elevation: MaterialStateProperty.all(15),
          backgroundColor: MaterialStateProperty.all(AppColors.darkBgColor),
        ),
      );

  static OutlinedButtonThemeData get outlineButtonLightTheme =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all(AppColors.lightShadowColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          ),
          side: MaterialStateProperty.all(
            BorderSide(color: AppColors.primaryColor),
          ),
          elevation: MaterialStateProperty.all(15),
          backgroundColor: MaterialStateProperty.all(AppColors.lightBgColor),
        ),
      );
}
