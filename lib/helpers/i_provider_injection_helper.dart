import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:relax/repository/music_repo.dart';
import 'package:relax/repository/on_boarding_repo.dart';
import 'package:relax/views_models/dashboard_view_model.dart';
import 'package:relax/views_models/on_boarding_view_model.dart';

abstract class ProviderInjection {
  static List<SingleChildWidget> providers = [
    ..._independentProvider,
    ..._dependentProvider
  ];

  static List<SingleChildWidget> _independentProvider = [
    Provider(create: (context) => OnBoardingRepo()),
    Provider(create: (context) => MusicRepo()),
    ChangeNotifierProvider(create: (context) => DashBoardViewModel()),
  ];

  static List<SingleChildWidget> _dependentProvider = [
    ChangeNotifierProvider(
      create: (context) => OnBoardingViewModel(
        Provider.of<OnBoardingRepo>(context, listen: false),
      ),
    ),
  ];
}
