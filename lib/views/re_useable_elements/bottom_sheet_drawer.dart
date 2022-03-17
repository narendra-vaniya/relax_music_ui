import 'package:flutter/material.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/services/app_navigation_service.dart';
import 'package:relax/views/re_useable_elements/app_drawer.dart';

class BottomSheetDrawer {
  static Future show() {
    return showModalBottomSheet(
      elevation: 0,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      context: AppNavigationService.context,
      builder: (_) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              color: Colors.red,
            ),
            margin: EdgeInsets.only(top: ScreenHelper().heightRes(100)),
            child: AppDrawerElement(),
          ),
        );
      },
    );
  }
}
