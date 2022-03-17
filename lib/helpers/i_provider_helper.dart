import 'package:relax/services/app_navigation_service.dart';

import 'package:provider/provider.dart';

abstract class ProviderHelper<T> {
  static T viewModel<T>() =>
      AppNavigationService.navigatorKey.currentContext!.read<T>();
}
