import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relax/helpers/i_app_images_helper.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/themes/i_app_themes.dart';

class DashBoardCurrentMusicPlayingElementView extends StatefulWidget {
  @override
  _DashBoardCurrentMusicPlayingElementViewState createState() =>
      _DashBoardCurrentMusicPlayingElementViewState();
}

class _DashBoardCurrentMusicPlayingElementViewState
    extends State<DashBoardCurrentMusicPlayingElementView> {
  double slider = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double imageSize = min(
      ScreenHelper().widthRes(220),
      ScreenHelper().heightRes(220),
    );

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: ScreenHelper().widthRes(7)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar,
            SizedBox(height: ScreenHelper().heightRes(10)),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppImagesHelper.album,
                            ),
                            fit: BoxFit.fill,
                          ),
                          color: AppThemes.theme.backgroundColor,
                          borderRadius: BorderRadius.circular(1000),
                          boxShadow: AppThemes.boxShadow),
                      width: imageSize,
                      height: imageSize,
                    ),
                    SizedBox(height: ScreenHelper().heightRes(18)),
                    Spacer(),
                    Text("Title", style: AppThemes.theme.textTheme.subtitle1),
                    SizedBox(height: ScreenHelper().heightRes(5)),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: ScreenHelper().widthRes(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenHelper().heightRes(25)),
                          IconButton(
                            iconSize: 50,
                            onPressed: () {},
                            icon: SvgPicture.asset(AppImagesHelper.pauseSvg),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// [ Widget ]
  Widget get nowPlayingTitle => Text(
        "Now playing",
        style: AppThemes.theme.textTheme.subtitle1!
            .copyWith(fontWeight: FontWeight.w700),
      );

  Widget get appBar => (ScreenHelper().isSmall || ScreenHelper().isMedium)
      ? AppBar()
      : nowPlayingTitle;
}
