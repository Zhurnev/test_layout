import 'package:flutter/material.dart';

import '../pages/error_page.dart';
import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../pages/saved_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => const LoginPage(title: "Login Page"),
        );
      case "/main":
        return MaterialPageRoute(builder: (_) {
          return const MainPage(title: "Main Page");
        });
      case "/saved":
        return MaterialPageRoute(
            builder: (_) => const SavedPage(title: "Saved Page"));
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}
