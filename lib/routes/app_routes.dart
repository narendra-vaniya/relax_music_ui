import 'package:flutter/cupertino.dart';
import 'package:relax/views/dashboard_view/elements/current_music_playing_element_view.dart';
import 'package:relax/views/on_boarding_view/on_boarding_view.dart';
import 'package:relax/views/dashboard_view/dashboard_view.dart';

abstract class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppRoutesNames.onBoardingView) {}
    switch (settings.name) {
      case AppRoutesNames.onBoardingView:
        return CupertinoPageRoute(builder: (_) => OnBoardingView());
      case AppRoutesNames.dashboardView:
        return CupertinoPageRoute(builder: (_) => DashBoardView());
      case AppRoutesNames.currentMusic:
        return CupertinoPageRoute(
            builder: (_) => DashBoardCurrentMusicPlayingElementView());
      default:
        return null;
    }
  }
}

abstract class AppRoutesNames {
  static const String onBoardingView = "/onBoardingView";
  static const String dashboardView = "/dashBoardView";
  static const String currentMusic = "/currentMusic";
}
