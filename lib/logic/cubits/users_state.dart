import 'package:test_layout/data/models/user.dart';

class UsersState {
  bool isLoading;
  List<User> savedUsers;
  List<User> currentUsers;
  Object? error;
  UsersState({
    this.isLoading = false,
    this.savedUsers = const [],
    this.currentUsers = const [],
    this.error,
  });
  UsersState copyWith({
    bool? isLoading,
    List<User>? savedUsers,
    List<User>? currentUsers,
    Object? error,
  }) {
    return UsersState(
      isLoading: isLoading ?? this.isLoading,
      savedUsers: savedUsers ?? this.savedUsers,
      currentUsers: currentUsers ?? this.currentUsers,
      error: error,
    );
  }
}
