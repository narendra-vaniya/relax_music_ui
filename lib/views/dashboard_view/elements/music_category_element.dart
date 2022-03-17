import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relax/helpers/i_app_images_helper.dart';
import 'package:relax/helpers/i_provider_helper.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/themes/i_app_themes.dart';
import 'package:relax/views_models/dashboard_view_model.dart';

class DashBoardMusicCategoryElement extends StatefulWidget {
  @override
  _DashBoardMusicCategoryElementState createState() =>
      _DashBoardMusicCategoryElementState();
}

class _DashBoardMusicCategoryElementState
    extends State<DashBoardMusicCategoryElement> {
  final listKey = GlobalKey<AnimatedListState>();
  DashBoardViewModel _boardViewModel =
      ProviderHelper.viewModel<DashBoardViewModel>();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _boardViewModel.checkingMusicListCategoryShow();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DashBoardViewModel>(
      builder: (_, viewModel, child) {
        return AnimatedOpacity(
          opacity: viewModel.isMusicListCategoryShow ? 1 : 0,
          duration: Duration(milliseconds: 150),
          child: AnimatedContainer(
            height: viewModel.isMusicListCategoryShow
                ? getResponsiveImageSize().height + 50
                : 0,
            duration: Duration(milliseconds: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                musicCategoryTitle,
                SizedBox(height: ScreenHelper().heightRes(4)),
                Center(
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(),
                    height: getResponsiveImageSize().height,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 12,
                      clipBehavior: Clip.none,
                      itemBuilder: (_, index) {
                        return MusicListDesign();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  /// [ Widget ]
  Widget get musicCategoryTitle => Text("Music category",
      style: AppThemes.theme.textTheme.subtitle1!
          .copyWith(fontWeight: FontWeight.w700));

  /// [ Methods ]
  Size getResponsiveImageSize() {
    if (ScreenHelper().isExLarge) return Size(200, 230);
    if (ScreenHelper().isLarge) return Size(150, 190);
    if (ScreenHelper().isMedium) return Size(130, 150);
    return Size(110, 140);
  }
}

class MusicListDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: getResponsiveImageSize().width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImagesHelper.album,
            ),
            fit: BoxFit.fill,
          ),
          color: AppThemes.theme.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: AppThemes.boxShadow,
        ),
        margin: EdgeInsets.only(right: 10, left: 2),
      ),
    );
  }

  Size getResponsiveImageSize() {
    if (ScreenHelper().isExLarge) return Size(200, 230);
    if (ScreenHelper().isLarge) return Size(150, 190);
    if (ScreenHelper().isMedium) return Size(130, 150);
    return Size(110, 140);
  }
}
