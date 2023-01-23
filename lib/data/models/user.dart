class User {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String pictureLarge;
  final int age;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.pictureLarge,
    required this.age,
  });
  User.fromJSON(Map<String, dynamic> json)
      : firstName = json['name']['first'],
        lastName = json['name']['last'],
        email = json['email'],
        phone = json['cell'],
        pictureLarge = json['picture']['large'],
        age = json['dob']['age'];
}
