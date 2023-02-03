import 'package:dio/dio.dart';

class UserAPI {
  Future<Response<String>> getRawUser(
    String gender,
    String nationality,
  ) async {
    final response = await Dio().get<String>(
      'https://randomuser.me/api/1.4/?gender=$gender&nat=$nationality&inc=gender,name,location,email,nat,picture,cell,dob&noinf',
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load a user');
    }
  }
}
