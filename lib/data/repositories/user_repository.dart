import 'dart:convert';

import '../../constants/enums.dart';
import '../dataproviders/user_api.dart';
import '../models/user.dart';

class UserRepository {
  var userAPI = UserAPI();
  Future<User> getUser(Gender gender, String nationality) async {
    var rawUser = await userAPI.getRawUser(gender.name, nationality);
    var jsonUser = jsonDecode(rawUser.body);
    var user = User.fromJson(jsonUser['results'][0]);
    return user;
  }
}
