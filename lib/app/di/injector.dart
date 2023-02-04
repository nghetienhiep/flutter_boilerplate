import 'package:flutter_boilerplate/app/di/router_di.dart';
import 'package:flutter_boilerplate/app/di/services_di.dart';
import 'package:flutter_boilerplate/app/di/use_cases_di.dart';
// import 'package:flutter_boilerplate/generated/l10n.dart';
import 'package:get_it/get_it.dart';

class AppInjector {
  AppInjector._();

  static final injector = GetIt.instance;

  static Future<void> initializeDependencies() async {
    // Language
    // injector.registerSingleton<S>(S());

    await RouterDI.init(injector);
    await ServicesDI.init(injector);
    await UseCasesDI.init(injector);
  }
}
