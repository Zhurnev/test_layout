import 'package:http/http.dart' as http;

class UserAPI {
  Future<http.Response> getRawUser(String gender, String nationality) async {
    final response = await http.get(
      Uri.parse(
        'https://randomuser.me/api/1.4/?gender=$gender&nat=$nationality&inc=gender,name,location,email,nat,picture,cell,dob&noinf',
      ),
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load a user');
    }
  }
}
