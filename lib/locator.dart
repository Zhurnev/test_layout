import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_layout/app/logic/cubits/users_cubit.dart';

final locator = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
)
void configureDependencies() {
  locator.registerSingleton<UsersCubit>(UsersCubit());
}
