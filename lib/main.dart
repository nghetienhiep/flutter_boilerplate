import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/global.dart';
import 'app/my_app.dart';

void main() async {
  setPathUrlStrategy();

  await Global.init();

  runApp(const MyApp());
}
