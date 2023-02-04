import 'package:flutter_boilerplate/router/app_router.dart';
import 'package:get_it/get_it.dart';

class RouterDI {
  const RouterDI._();

  static Future init(GetIt injector) async {
    injector.registerSingleton<AppRouter>(AppRouterImpl());
  }
}
