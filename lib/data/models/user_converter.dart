class UserConverter {
  static String largePictureFromPicture(dynamic picture) {
    return picture['large'];
  }

  static int ageFromDob(dynamic dob) {
    return dob['age'];
  }
}
