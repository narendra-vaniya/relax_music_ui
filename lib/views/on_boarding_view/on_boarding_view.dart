import 'package:flutter/material.dart';
import 'package:relax/generated/l10n.dart';
import 'package:relax/helpers/i_provider_helper.dart';
import 'package:relax/routes/app_routes.dart';
import 'package:relax/services/app_navigation_service.dart';
import 'package:relax/views/on_boarding_view/elements/bottom_left_bg_img_element.dart';
import 'package:relax/views/on_boarding_view/elements/on_boarding_base_element.dart';
import 'package:relax/views/on_boarding_view/elements/top_right_bg_img_element.dart';
import 'package:relax/views_models/on_boarding_view_model.dart';
import 'package:provider/provider.dart';

class OnBoardingView extends StatefulWidget {
  

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late OnBoardingViewModel _boardingViewModel =
      ProviderHelper.viewModel<OnBoardingViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Consumer<OnBoardingViewModel>(
            builder: (context, viewMode, child) => PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: viewMode.onBoardingPageController,
              children: [
                OnBoardingBaseElement(
                  heading: "Manage Your Anxiety",
                  subHeading:
                      "Know that feeling of your heart beating faster in response to a stressful situation? Or perhaps, instead",
                  buttonText: S.current.next_btn,
                  buttonEvent: () =>
                      _boardingViewModel.changeOnBoardingPageIndex(1),
                ),
                OnBoardingBaseElement(
                  heading: "Calming Exercises",
                  subHeading:
                      "Know that feeling of your heart beating faster in response to a stressful situation? Or perhaps, instead",
                  buttonText: S.current.next_btn,
                  buttonEvent: () =>
                      _boardingViewModel.changeOnBoardingPageIndex(2),
                ),
                OnBoardingBaseElement(
                  heading: "Manage Your Anxiety",
                  subHeading:
                      "Know that feeling of your heart beating faster in response to a stressful situation? Or perhaps, instead",
                  buttonText: "Start",
                  buttonEvent: () {
                    AppNavigationService.push(AppRoutesNames.dashboardView);
                  },
                ),
              ],
            ),
          ),
          OnBoardingBottomLeftElement(),
          OnBoardingTopRightBgImgElement()
        ],
      ),
    );
  }
}
