import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_layout/app/logic/cubits/users_cubit.dart';
import 'package:test_layout/app/presentation/custom_theme.dart';
import 'package:test_layout/app/presentation/router/app_router.dart';
import 'package:test_layout/injectable/get_it.dart';
import 'package:test_layout/l10n/l10n.dart';

class RandomUserApp extends StatelessWidget {
  const RandomUserApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UsersCubit>(),
      child: MaterialApp(
        onGenerateRoute: AppRouter().onGenerateRoute,
        theme: CustomTheme.mainTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
