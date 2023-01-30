// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_converter.dart';
import 'name.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    required Name name,
    required String email,
    @JsonKey(name: "cell") required String phone,
    @JsonKey(name: "picture", fromJson: UserConverter.largePictureFromPicture)
        required String pictureLarge,
    @JsonKey(name: "dob", fromJson: UserConverter.ageFromDob) required int age,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
