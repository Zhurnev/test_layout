import 'package:flutter/material.dart';
import 'package:test_layout/l10n/l10n.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(l10n.errorMessage),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.errorButton),
            ),
          ],
        ),
      ),
    );
  }
}
