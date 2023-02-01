import 'package:flutter_test/flutter_test.dart';
import 'package:test_layout/app/presentation/pages/login_page.dart';
import 'package:test_layout/app/random_user_app.dart';

void main() {
  group('App', () {
    testWidgets('renders LoginPage', (tester) async {
      await tester.pumpWidget(const RandomUserApp());
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
