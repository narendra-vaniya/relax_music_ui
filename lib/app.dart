import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:relax/routes/app_routes.dart';
import 'package:relax/themes/i_app_themes.dart';
import 'package:relax/assets/global_config.dart';
import 'package:relax/helpers/i_provider_injection_helper.dart';
import 'package:relax/services/app_navigation_service.dart';
import 'generated/l10n.dart';

class RelaxApp extends StatefulWidget {
  @override
  _RelaxAppState createState() => _RelaxAppState();
}

class _RelaxAppState extends State<RelaxApp> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setPreferredOrientations(GlobalConfig.defaultDeviceOrientation);
    SystemChrome.setSystemUIOverlayStyle(
        GlobalConfig.defaultSystemUiOverlayStyle);
   
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjection.providers,
      child: MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: AppThemes.defaultThemeMode,
        navigatorKey: AppNavigationService.navigatorKey,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: AppRoutesNames.onBoardingView,
      ),
    );
  }
}
