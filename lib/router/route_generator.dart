import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:bases_web/ui/pages/counter_page.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:bases_web/ui/pages/page_404.dart';

class RouteGenerator {
  // I use static for not create new instance of Router
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterView(), '/stateful');
      case '/provider':
        return _fadeRoute(CounterProviderView(), '/provider');
      default:
        return _fadeRoute(View404(), '/404');
    }
  }

  // Static class for transition in navigations pages.
  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, ___) =>
            // I ask if web, make Fade, if cell device make other like Cupertino
            (kIsWeb)
                ? FadeTransition(
                    opacity: animation,
                    child: child,
                  )
                : CupertinoPageTransition(
                    child: child,
                    linearTransition: true,
                    primaryRouteAnimation: animation,
                    secondaryRouteAnimation: __,
                  ));
  }
}
