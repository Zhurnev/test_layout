class UserConverter {
  static String largePictureFromPicture(dynamic picture) {
    return (picture as Map<String, dynamic>)['large'] as String;
  }

  static int ageFromDob(dynamic dob) {
    return int.parse((dob as Map<String, dynamic>)['age'].toString());
  }
}
