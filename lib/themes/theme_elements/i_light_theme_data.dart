import 'package:flutter/material.dart';
import 'package:relax/themes/i_app_colors.dart';
import 'package:relax/themes/i_app_themes.dart';
import 'package:relax/themes/theme_elements/i_app_bar_theme_element.dart';
import 'package:relax/themes/theme_elements/i_outline_button_theme_element.dart';
import 'package:relax/themes/theme_elements/i_text_theme_element.dart';
import 'package:relax/themes/theme_elements/i_app_input_box_theme_element.dart';
import 'package:relax/themes/theme_elements/i_slider_theme_element.dart';

abstract class LightThemeData {
  static ThemeData get theme => ThemeData(
        primaryColor: AppColors.primaryColor,
        shadowColor: AppColors.lightShadowColor,
        scaffoldBackgroundColor: AppColors.lightSecondaryColor,
        appBarTheme: AppBarThemeElement.appBarLightTheme,
        fontFamily: AppThemes.fontFamily,
        textTheme: TextThemeElement.lightTextTheme,
        outlinedButtonTheme: OutlineButtonThemeElement.outlineButtonLightTheme,
        backgroundColor: AppColors.lightBgColor,
        primaryIconTheme: IconThemeData(
          color: AppColors.darkBgColor,
        ),
        buttonTheme: ButtonThemeData(padding: EdgeInsets.all(0)),
        inputDecorationTheme: InputBoxThemeElement.inputBoxTheme,
        sliderTheme:SliderThemeElement.sliderTheme
      );
}
