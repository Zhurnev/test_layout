import 'dart:convert';

import 'package:test_layout/app/constants/enums.dart';
import 'package:test_layout/app/data/dataproviders/user_api.dart';
import 'package:test_layout/app/data/models/user.dart';

class UserRepository {
  UserAPI userAPI = UserAPI();
  Future<User> getUser(Gender gender, String nationality) async {
    final rawUser = await userAPI.getRawUser(gender.name, nationality);
    final jsonUser = jsonDecode(rawUser.body);
    final user = User.fromJson(
      ((jsonUser as Map<String, dynamic>)['results'] as List<dynamic>)[0]
          as Map<String, dynamic>,
    );
    return user;
  }
}
