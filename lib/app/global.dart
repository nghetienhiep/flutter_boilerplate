import 'package:flutter/material.dart';

import 'di/injector.dart';

class Global {
  const Global._();

  static Future<void> init() async {
    await _config();
    await _appInjection();
  }

  static Future _config() async {
    WidgetsFlutterBinding.ensureInitialized();

    //
    // await LocalService.init();
    //
    // EnvConfigs.setEnvMode(envMode);
  }

  static Future _appInjection() async => AppInjector.initializeDependencies();
}
