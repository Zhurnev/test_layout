// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<User> get savedUsers => throw _privateConstructorUsedError;
  List<User> get currentUsers => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersStateCopyWith<UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
  @useResult
  $Res call(
      {dynamic isLoading,
      List<User> savedUsers,
      List<User> currentUsers,
      Object? error});
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? savedUsers = null,
    Object? currentUsers = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      savedUsers: null == savedUsers
          ? _value.savedUsers
          : savedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentUsers: null == currentUsers
          ? _value.currentUsers
          : currentUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersStateCopyWith<$Res>
    implements $UsersStateCopyWith<$Res> {
  factory _$$_UsersStateCopyWith(
          _$_UsersState value, $Res Function(_$_UsersState) then) =
      __$$_UsersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic isLoading,
      List<User> savedUsers,
      List<User> currentUsers,
      Object? error});
}

/// @nodoc
class __$$_UsersStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_UsersState>
    implements _$$_UsersStateCopyWith<$Res> {
  __$$_UsersStateCopyWithImpl(
      _$_UsersState _value, $Res Function(_$_UsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = freezed,
    Object? savedUsers = null,
    Object? currentUsers = null,
    Object? error = freezed,
  }) {
    return _then(_$_UsersState(
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      savedUsers: null == savedUsers
          ? _value._savedUsers
          : savedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      currentUsers: null == currentUsers
          ? _value._currentUsers
          : currentUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_UsersState implements _UsersState {
  const _$_UsersState(
      {this.isLoading = false,
      final List<User> savedUsers = const [],
      final List<User> currentUsers = const [],
      this.error})
      : _savedUsers = savedUsers,
        _currentUsers = currentUsers;

  @override
  @JsonKey()
  final dynamic isLoading;
  final List<User> _savedUsers;
  @override
  @JsonKey()
  List<User> get savedUsers {
    if (_savedUsers is EqualUnmodifiableListView) return _savedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedUsers);
  }

  final List<User> _currentUsers;
  @override
  @JsonKey()
  List<User> get currentUsers {
    if (_currentUsers is EqualUnmodifiableListView) return _currentUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentUsers);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'UsersState(isLoading: $isLoading, savedUsers: $savedUsers, currentUsers: $currentUsers, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other._savedUsers, _savedUsers) &&
            const DeepCollectionEquality()
                .equals(other._currentUsers, _currentUsers) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_savedUsers),
      const DeepCollectionEquality().hash(_currentUsers),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      __$$_UsersStateCopyWithImpl<_$_UsersState>(this, _$identity);
}

abstract class _UsersState implements UsersState {
  const factory _UsersState(
      {final dynamic isLoading,
      final List<User> savedUsers,
      final List<User> currentUsers,
      final Object? error}) = _$_UsersState;

  @override
  dynamic get isLoading;
  @override
  List<User> get savedUsers;
  @override
  List<User> get currentUsers;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_UsersStateCopyWith<_$_UsersState> get copyWith =>
      throw _privateConstructorUsedError;
}
