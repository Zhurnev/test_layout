import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_layout/app/data/models/user.dart';
part 'users_state.freezed.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState({
    @Default(false) isLoading,
    @Default([]) List<User> savedUsers,
    @Default([]) List<User> currentUsers,
    Object? error,
  }) = _UsersState;
}
