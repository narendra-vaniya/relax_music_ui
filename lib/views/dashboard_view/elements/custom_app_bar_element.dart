import 'package:flutter/material.dart';
import 'package:relax/helpers/i_provider_helper.dart';
import 'package:relax/helpers/i_screen_helper.dart';
import 'package:relax/themes/i_app_colors.dart';
import 'package:relax/themes/i_app_themes.dart';
import 'package:relax/views_models/dashboard_view_model.dart';

class DashBoardAppBarHeading extends StatefulWidget {
  @override
  _DashBoardAppBarHeadingState createState() => _DashBoardAppBarHeadingState();
}

class _DashBoardAppBarHeadingState extends State<DashBoardAppBarHeading> {
  final DashBoardViewModel _dashBoardViewModel =
      ProviderHelper.viewModel<DashBoardViewModel>();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        searchBoxOnlyForLargeAndExLargeScreen(),
        Spacer(),
        settingButton(_dashBoardViewModel),
      ],
    );
  }
}

Widget searchBoxOnlyForLargeAndExLargeScreen() => Expanded(
      flex: ScreenHelper().isLarge ? 3 : 3,
      child: TextField(
        cursorColor: AppColors.lightInputBorderColor,
        style: AppThemes.theme.textTheme.bodyText1!
            .copyWith(color: AppColors.lightInputBorderColor),
        decoration: InputDecoration(
          hintText: 'Search',
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 22, right: 6),
            child: Icon(Icons.search, color: AppColors.lightInputBorderColor),
          ),
        ),
      ),
    );

Widget settingButton(DashBoardViewModel viewModel) =>
    (!ScreenHelper().isExLarge)
        ? GestureDetector(
            onTap: () => viewModel.openDrawerAccountingScreen(),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: AppThemes.theme.backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: AppThemes.boxShadow),
              child: Icon(Icons.settings),
            ),
          )
        : SizedBox();
