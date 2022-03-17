import 'package:flutter/material.dart';
import 'package:relax/themes/i_app_colors.dart';
import 'package:relax/themes/i_app_themes.dart';
import 'package:relax/themes/theme_elements/i_app_bar_theme_element.dart';
import 'package:relax/themes/theme_elements/i_outline_button_theme_element.dart';
import 'package:relax/themes/theme_elements/i_text_theme_element.dart';
import 'package:relax/themes/theme_elements/i_app_input_box_theme_element.dart';
import 'package:relax/themes/theme_elements/i_slider_theme_element.dart';

abstract class DarkThemeData {
 static ThemeData get theme => ThemeData(
        primaryColor: AppColors.primaryColor,
        accentColor: Colors.white,
        scaffoldBackgroundColor: AppColors.darkBgColor,
        shadowColor: AppColors.darkShadowColor,
        appBarTheme: AppBarThemeElement.appBarLightTheme,
        backgroundColor: AppColors.darkSecondaryColor,
        fontFamily: AppThemes.fontFamily,
        textTheme: TextThemeElement.darkTextTheme,
        outlinedButtonTheme: OutlineButtonThemeElement.outlineButtonDarkTheme,
        inputDecorationTheme: InputBoxThemeElement.inputBoxTheme,
        sliderTheme:SliderThemeElement.sliderTheme
      );
}
