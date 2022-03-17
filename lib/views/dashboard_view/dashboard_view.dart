import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:relax/helpers/i_provider_helper.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/themes/i_app_themes.dart';
import 'package:relax/views/re_useable_elements/app_drawer.dart';
import 'package:relax/views/dashboard_view/elements/current_music_playing_element.dart';
import 'package:relax/views/dashboard_view/elements/custom_app_bar_element.dart';
import 'package:relax/views/dashboard_view/elements/music_category_element.dart';
import 'package:relax/views/dashboard_view/elements/music_list_element.dart';
import 'package:relax/views_models/dashboard_view_model.dart';

class DashBoardView extends StatefulWidget {
  @override
  _DashBoardViewState createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final DashBoardViewModel _dashBoardViewModel =
      ProviderHelper.viewModel<DashBoardViewModel>();

 
  @override
  Widget build(BuildContext context) {
    double topPaddingForSettingIcon = ScreenHelper().padding.top;

    bool isMusicListShow =
        (ScreenHelper().isExLarge || ScreenHelper().isLarge) &&
            ScreenHelper().height > 600;

    bool isDrawerShow = !ScreenHelper().isSmall;

    return Scaffold(
      key: _dashBoardViewModel.dashBoardScaffoldKey,
      drawerEnableOpenDragGesture: isDrawerShow,
      drawer: Drawer(child: AppDrawerElement()),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (ScreenHelper().isExLarge)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppThemes.theme.backgroundColor,
                  boxShadow: AppThemes.boxShadow,
                ),
                child: AppDrawerElement(),
              ),
            ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenHelper().widthRes(8),
                vertical: ScreenHelper().heightRes(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: topPaddingForSettingIcon),
                  DashBoardAppBarHeading(),
                  SizedBox(height: ScreenHelper().heightRes(20)),
                  DashBoardMusicCategoryElement(),
                  Expanded(
                    child: Row(
                      children: [
                        DashBoardMusicListElement(),
                        if (isMusicListShow)
                          DashBoardCurrentMusicPlayingElement()
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
