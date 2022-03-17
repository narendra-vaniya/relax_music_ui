import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:relax/helpers/i_app_images_helper.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/themes/i_app_themes.dart';

class AppDrawerElement extends StatefulWidget {
  @override
  AppDrawerElementState createState() => AppDrawerElementState();
}

class AppDrawerElementState extends State<AppDrawerElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
        color: AppThemes.theme.backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: relaxHeadingHeight,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(topLeft: radius, topRight: radius),
              color: Colors.red,
            ),
            child: Center(child: Text("Relax")),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppThemes.theme.backgroundColor,
              boxShadow: AppThemes.boxShadow,
            ),
            child: Column(
              children: [
                customListTileDesign("Music", AppImagesHelper.musicSvg),
                customListTileDesign(
                    "Breathing exercise", AppImagesHelper.breathSvg),
                customListTileDesign(
                    "Share to your friend", AppImagesHelper.shareSvg),
                customListTileDesign("Give rating", AppImagesHelper.starSvg),
                customListTileDesign("Light mode", AppImagesHelper.lightSvg),
              ],
            ),
          ),
          appVersionText,
          Spacer(),
          madeWithLoveText
        ],
      ),
    );
  }

  /// [Methods]

  Radius get radius =>
      ScreenHelper().isSmall ? Radius.circular(12) : Radius.circular(0);
  double get relaxHeadingHeight => !ScreenHelper().isSmall
      ? ScreenHelper().heightRes(200)
      : ScreenHelper().heightRes(100);

  ///[Widget]

  Widget get appVersionText => Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppThemes.theme.backgroundColor,
            boxShadow: AppThemes.boxShadow),
        child: customListTileDesign("Version 1.0.0", Icons.android_outlined),
      );

  Widget get madeWithLoveText => Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Made with ",
              style: AppThemes.theme.textTheme.bodyText1!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Icon(Icons.favorite_rounded, color: Colors.red)
          ],
        ),
      );

  Widget customListTileDesign(String title, dynamic icon) => ListTile(
        leading: (icon is IconData)
            ? Icon(icon, color: Colors.black, size: 25)
            : SvgPicture.asset('$icon',
                width: 20, color: Colors.black, alignment: Alignment.center),
        title: Text(
          "$title",
          style: AppThemes.theme.textTheme.bodyText1!
              .copyWith(fontWeight: FontWeight.w500),
        ),
      );
}
