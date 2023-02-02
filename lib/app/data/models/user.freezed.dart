// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  Name get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'cell')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture', fromJson: UserConverter.largePictureFromPicture)
  String get pictureLarge => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob', fromJson: UserConverter.ageFromDob)
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {Name name,
      String email,
      @JsonKey(name: 'cell')
          String phone,
      @JsonKey(name: 'picture', fromJson: UserConverter.largePictureFromPicture)
          String pictureLarge,
      @JsonKey(name: 'dob', fromJson: UserConverter.ageFromDob)
          int age});

  $NameCopyWith<$Res> get name;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? pictureLarge = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      pictureLarge: null == pictureLarge
          ? _value.pictureLarge
          : pictureLarge // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      String email,
      @JsonKey(name: 'cell')
          String phone,
      @JsonKey(name: 'picture', fromJson: UserConverter.largePictureFromPicture)
          String pictureLarge,
      @JsonKey(name: 'dob', fromJson: UserConverter.ageFromDob)
          int age});

  @override
  $NameCopyWith<$Res> get name;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? pictureLarge = null,
    Object? age = null,
  }) {
    return _then(_$_User(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      pictureLarge: null == pictureLarge
          ? _value.pictureLarge
          : pictureLarge // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_User implements _User {
  const _$_User(
      {required this.name,
      required this.email,
      @JsonKey(name: 'cell')
          required this.phone,
      @JsonKey(name: 'picture', fromJson: UserConverter.largePictureFromPicture)
          required this.pictureLarge,
      @JsonKey(name: 'dob', fromJson: UserConverter.ageFromDob)
          required this.age});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final Name name;
  @override
  final String email;
  @override
  @JsonKey(name: 'cell')
  final String phone;
  @override
  @JsonKey(name: 'picture', fromJson: UserConverter.largePictureFromPicture)
  final String pictureLarge;
  @override
  @JsonKey(name: 'dob', fromJson: UserConverter.ageFromDob)
  final int age;

  @override
  String toString() {
    return 'User(name: $name, email: $email, phone: $phone, pictureLarge: $pictureLarge, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.pictureLarge, pictureLarge) ||
                other.pictureLarge == pictureLarge) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, phone, pictureLarge, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final Name name,
      required final String email,
      @JsonKey(name: 'cell')
          required final String phone,
      @JsonKey(name: 'picture', fromJson: UserConverter.largePictureFromPicture)
          required final String pictureLarge,
      @JsonKey(name: 'dob', fromJson: UserConverter.ageFromDob)
          required final int age}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  Name get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'cell')
  String get phone;
  @override
  @JsonKey(name: 'picture', fromJson: UserConverter.largePictureFromPicture)
  String get pictureLarge;
  @override
  @JsonKey(name: 'dob', fromJson: UserConverter.ageFromDob)
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
