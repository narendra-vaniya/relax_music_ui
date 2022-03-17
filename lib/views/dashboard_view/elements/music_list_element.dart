import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:relax/data_class/music_list_data_class.dart';
import 'package:relax/helpers/i_app_images_helper.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/themes/i_app_themes.dart';

class DashBoardMusicListElement extends StatefulWidget {
  @override
  _DashBoardMusicListElementState createState() =>
      _DashBoardMusicListElementState();
}

class _DashBoardMusicListElementState extends State<DashBoardMusicListElement> {
  final listKey = GlobalKey<AnimatedListState>();

  late List<MusicCategoryDataClass> musicCategory;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            musicTitle,
            SizedBox(height: ScreenHelper().heightRes(10)),
            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(),
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (_, index) => MusicListDesign(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// [ Widget ]
  Widget get musicTitle => Text("Music",
      style: AppThemes.theme.textTheme.subtitle1!
          .copyWith(fontWeight: FontWeight.w700));
}

class MusicListDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      decoration: BoxDecoration(
          color: AppThemes.theme.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: AppThemes.boxShadow),
      child: ListTile(
        onTap: () {},
        leading: SvgPicture.asset(
          '${AppImagesHelper.musicSvg}',
          width: 30,
          color: Colors.black,
          alignment: Alignment.center,
        ),
        title: Text(
          "Title",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppThemes.theme.textTheme.subtitle1!
              .copyWith(fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
          "Clam",
          style: AppThemes.theme.textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.w400,
            color: AppThemes.theme.textTheme.bodyText1!.color!.withOpacity(0.7),
          ),
        ),
        trailing: SvgPicture.asset(
          '${AppImagesHelper.playSvg}',
          width: 30,
          color: AppThemes.theme.primaryColor,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
