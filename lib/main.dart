import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/cubits/users_cubit.dart';
import 'presentation/custom_theme.dart';
import 'presentation/pages/error_page.dart';
import 'presentation/router/app_router.dart';

void main() {
  ErrorWidget.builder =
      (FlutterErrorDetails flutterErrorDetails) => const ErrorPage();
  runApp(RandomUserApp(
    appRouter: AppRouter(),
  ));
}

class RandomUserApp extends StatelessWidget {
  final AppRouter appRouter;
  const RandomUserApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(),
      child: MaterialApp(
        title: 'Random User Favoriting App',
        theme: CustomTheme.mainTheme,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
