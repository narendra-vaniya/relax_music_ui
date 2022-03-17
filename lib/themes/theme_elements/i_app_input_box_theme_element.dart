import 'package:flutter/material.dart';
import 'package:relax/themes/i_app_colors.dart';
import 'package:relax/themes/theme_elements/i_text_theme_element.dart';

abstract class InputBoxThemeElement {
  static InputDecorationTheme get inputBoxTheme => InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: AppColors.lightInputBorderColor),
        ),
        hintStyle: TextThemeElement.lightTextTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.w400,
          color: AppColors.lightInputBorderColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: AppColors.lightInputBorderColor),
        ),
        contentPadding: EdgeInsets.all(0)
      );
}
