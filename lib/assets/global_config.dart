import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:relax/themes/i_app_colors.dart';

enum AppMode { DEV, PROD }

class GlobalConfig {
  static AppMode get appMode => AppMode.DEV;
  static ThemeMode get defaultTheme => ThemeMode.system;

  static List<DeviceOrientation> get defaultDeviceOrientation =>
      [DeviceOrientation.portraitUp];

  static SystemUiOverlayStyle get defaultSystemUiOverlayStyle =>
      SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
      );
}
