import 'package:flutter/material.dart';

// I use GetIt for create Singleton in locator file...
//class _NavigationService {
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}

// Singlenton -> this is only created once because NavigationService is private
//final navigationService = new _NavigationService();
