import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:test_layout/app/data/dataproviders/user_api.dart';
import 'package:test_layout/app/data/models/user.dart';
import 'package:test_layout/app/utility/enums.dart';

@injectable
class UserRepository {
  UserAPI userAPI = UserAPI();
  Future<User> getUser(Gender gender, String nationality) async {
    final rawUser =
        await userAPI.getRawUser(gender: gender.name, nationality: nationality);
    final jsonUser = jsonDecode(rawUser.data!);
    final user = User.fromJson(
      ((jsonUser as Map<String, dynamic>)['results'] as List<dynamic>)[0]
          as Map<String, dynamic>,
    );
    return user;
  }
}
