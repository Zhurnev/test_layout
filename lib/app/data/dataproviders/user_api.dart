import 'package:dio/dio.dart';

class UserAPI {
  Future<Response<String>> getRawUser({
    required String gender,
    required String nationality,
  }) async {
    final response = await Dio().get<String>(
      'https://randomuser.me/api/1.4/?gender=$gender&nat=$nationality&inc=gender,name,location,email,nat,picture,cell,dob&noinf',
    );
    if (response.statusCode == 200) {
      return response;
    }
    throw Exception('Failed to load a user');
  }
}
