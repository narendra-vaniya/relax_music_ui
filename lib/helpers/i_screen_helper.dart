import 'package:flutter/material.dart';
import 'package:relax/services/app_navigation_service.dart';

enum WhichDevice {
  Small,
  Medium,
  Large,
  ExLarge,
}

class ScreenHelper {
  ScreenHelper._internal();

  static final ScreenHelper _screenHelper = ScreenHelper._internal();

  factory ScreenHelper() {
    return _screenHelper;
  }

  final BuildContext _context = AppNavigationService.context;
  MediaQueryData get _mediaQuery => MediaQuery.of(_context);

  Size get _size => _mediaQuery.size;

  Orientation get orientation => _mediaQuery.orientation;

  num get width => _size.width;
  num get height => _size.height;

  num get devicePixelRation => _mediaQuery.devicePixelRatio;

  bool get isSmall => _size.width <= 480;
  bool get isMedium => _size.width > 480 && _size.width <= 768;
  bool get isLarge => _size.width > 768 && _size.width <= 1279;
  bool get isExLarge => _size.width > 1279;

  WhichDevice whichDevice() {
    if (isSmall) return WhichDevice.Small;
    if (isMedium) return WhichDevice.Medium;
    if (isLarge) return WhichDevice.Large;
    return WhichDevice.ExLarge;
  }

  EdgeInsets get padding => _mediaQuery.padding;

  double widthRes(num value) => ((width / 360) * value);
  double heightRes(num value) => ((height / 690) * value);
}
