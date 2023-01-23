import 'package:flutter/material.dart';
import 'package:test_layout/logic/cubits/users_cubit.dart';
import 'package:test_layout/presentation/pages/error_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_layout/presentation/router/app_router.dart';
import 'package:test_layout/presentation/custom_theme.dart';

void main() {
  ErrorWidget.builder =
      (FlutterErrorDetails flutterErrorDetails) => const ErrorPage(
            title: "Error Page",
          );
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
