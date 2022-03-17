import 'package:flutter/material.dart';

import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/routes/app_routes.dart';
import 'package:relax/services/app_navigation_service.dart';
import 'package:relax/views/re_useable_elements/bottom_sheet_drawer.dart';


class DashBoardViewModel extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _dashBoardScaffoldKey =
      GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get dashBoardScaffoldKey => _dashBoardScaffoldKey;

  final ScrollController _musicListCategoryScrollController =
      ScrollController();
  bool _isMusicListCategoryShow = true;

  bool get isMusicListCategoryShow => _isMusicListCategoryShow;

  ScrollController get musicListCategoryScrollController =>
      _musicListCategoryScrollController;

  void checkingMusicListCategoryShow() {
    if (musicListCategoryScrollController.hasClients) {
      musicListCategoryScrollController.addListener(() {
        if (musicListCategoryScrollController.offset > 50 &&
            ScreenHelper().isSmall) {
          _isMusicListCategoryShow = false;
        } else {
          _isMusicListCategoryShow = true;
        }
        notifyListeners();
      });
    }
  }

  void openDrawerAccountingScreen() {
    if (ScreenHelper().isSmall) {
      BottomSheetDrawer.show();
    } else {
      dashBoardScaffoldKey.currentState!.openDrawer();
    }
  }

  void onTapMusicListEvent({
    required String url,
    required String title,
    required String artUri,
  }) {
    if (ScreenHelper().isSmall || ScreenHelper().isMedium) {
      AppNavigationService.push(AppRoutesNames.currentMusic);
    } else {
      print("Done");
    }
  }
}
