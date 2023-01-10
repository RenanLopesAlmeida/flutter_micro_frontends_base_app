import 'package:flutter/material.dart';

import 'package:micro_app_login/micro_app_login.dart';
import 'package:micro_core/micro_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({super.key}) {
    super.registerRouters();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MicroAppLoginResolver(),
      ];
}
