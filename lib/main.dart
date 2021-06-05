import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/router/route_generator.dart';

void main() {
  setupLocator(); // Init GetIt
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RouterApp',
      initialRoute: '/stateful',
      // I dont need this type of routes implementation
      // routes: {
      //   '/stateful': (_) => CounterPage(),
      //   '/provider': (_) => CounterProviderPage()
      // },
      // I can put onGenerateRoute : RouterGenerator.generateRoute and automatic
      // pass settings argument to generateRoute.
      onGenerateRoute: RouteGenerator.generateRoute,
      //navigatorKey: navigationService.navigatorKey,
      // Use GetIt
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(child: child ?? Container());
      },
    );
  }
}
