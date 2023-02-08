import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:test_layout/injectable/get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
)
void configureDependencies() => getIt.init();
