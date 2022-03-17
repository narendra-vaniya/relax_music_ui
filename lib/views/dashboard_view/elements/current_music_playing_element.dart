import 'dart:math';

import 'package:flutter/material.dart';
import 'package:relax/helpers/i_app_images_helper.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/themes/i_app_themes.dart';

class DashBoardCurrentMusicPlayingElement extends StatefulWidget {
  @override
  _DashBoardCurrentMusicPlayingElementState createState() =>
      _DashBoardCurrentMusicPlayingElementState();
}

class _DashBoardCurrentMusicPlayingElementState
    extends State<DashBoardCurrentMusicPlayingElement> {
  double slider = 0;

  @override
  Widget build(BuildContext context) {
    double imageSize = min(
      ScreenHelper().widthRes(110),
      ScreenHelper().heightRes(110),
    );

    
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: ScreenHelper().widthRes(7)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            nowPlayingTitle,
            SizedBox(height: ScreenHelper().heightRes(10)),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: AppThemes.theme.backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: AppThemes.boxShadow),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (ScreenHelper().height > 670)
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppImagesHelper.album,
                            ),
                            fit: BoxFit.fill,
                          ),
                            color: AppThemes.theme.backgroundColor,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: AppThemes.boxShadow),
                        width: imageSize,
                        height: imageSize,
                      ),
                      SizedBox(height: ScreenHelper().heightRes(18)),
                      Text("Title", style: AppThemes.theme.textTheme.subtitle1),
                      SizedBox(height: ScreenHelper().heightRes(5)),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: ScreenHelper().widthRes(20),
                        ),
                        child: Column(
                          children: [
                            Slider(
                              value: slider,
                              onChanged: (a) => setState(() => slider = a),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00:00",
                                    style: AppThemes.theme.textTheme.bodyText1),
                                Text("02:00",
                                    style: AppThemes.theme.textTheme.bodyText1),
                              ],
                            ),
                            SizedBox(height: ScreenHelper().heightRes(5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.keyboard_arrow_left_rounded),
                                Icon(Icons.play_arrow),
                                Icon(Icons.keyboard_arrow_right_rounded),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// [ Widget ]
  Widget get nowPlayingTitle => Text("Now playing",
      style: AppThemes.theme.textTheme.subtitle1!
          .copyWith(fontWeight: FontWeight.w700));
}
