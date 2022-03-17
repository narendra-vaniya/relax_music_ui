import 'package:flutter/material.dart';
import 'package:relax/assets/global_config.dart';
import 'package:relax/themes/theme_elements/i_dark_theme_data.dart';
import 'package:relax/themes/theme_elements/i_light_theme_data.dart';
import 'package:relax/services/app_navigation_service.dart';

abstract class AppThemes {
  static String get fontFamily => 'TTNormsPro';

  static ThemeData get lightTheme => LightThemeData.theme;
  static ThemeData get darkTheme => DarkThemeData.theme;

  static ThemeMode get defaultThemeMode => GlobalConfig.defaultTheme;

  static ThemeData get theme => Theme.of(AppNavigationService.context);

  static List<BoxShadow> get boxShadow => [
        BoxShadow(
          blurRadius: GlobalConfig.defaultTheme == ThemeMode.dark ? 1 : 6,
          color: theme.shadowColor,
          spreadRadius: 1.5,
        )
      ];
}
