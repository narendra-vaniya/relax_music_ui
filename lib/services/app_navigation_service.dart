import 'package:flutter/material.dart';

abstract class AppNavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentState!.context;
  static void push(String routeName) async =>
      navigatorKey.currentState?.pushNamed(routeName);
}
