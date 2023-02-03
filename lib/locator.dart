import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:test_layout/locator.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
)
void configureDependencies() => locator.init();
