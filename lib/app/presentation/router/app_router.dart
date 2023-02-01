import 'package:flutter/material.dart';

import 'package:test_layout/app/presentation/pages/error_page.dart';
import 'package:test_layout/app/presentation/pages/login_page.dart';
import 'package:test_layout/app/presentation/pages/main_page.dart';
import 'package:test_layout/app/presentation/pages/saved_page.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const LoginPage(title: 'Login Page'),
        );
      case '/main':
        return MaterialPageRoute(
          builder: (_) {
            return const MainPage(title: 'Main Page');
          },
        );
      case '/saved':
        return MaterialPageRoute(
          builder: (_) => const SavedPage(title: 'Saved Page'),
        );
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}
