// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      email: json['email'] as String,
      phone: json['cell'] as String,
      pictureLarge: UserConverter.largePictureFromPicture(json['picture']),
      age: UserConverter.ageFromDob(json['dob']),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name.toJson(),
      'email': instance.email,
      'cell': instance.phone,
      'picture': instance.pictureLarge,
      'dob': instance.age,
    };
