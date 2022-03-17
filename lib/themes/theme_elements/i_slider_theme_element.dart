import 'package:flutter/material.dart';
import 'package:relax/themes/i_app_colors.dart';

abstract class SliderThemeElement{
  static SliderThemeData get sliderTheme=> SliderThemeData(
          thumbColor:  AppColors.primaryColor,
          thumbShape: RoundSliderThumbShape(
            elevation: 5,
            enabledThumbRadius: 6,
            
          ),
          overlayColor: AppColors.primaryColor.withOpacity(0.2),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 12
          ),
          trackHeight: 2,
          activeTrackColor:  AppColors.primaryColor,
          inactiveTrackColor: AppColors.lightSecondaryColor
        );
}