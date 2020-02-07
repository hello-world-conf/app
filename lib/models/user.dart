class User{
  String name;
  String email;
  User(this.name,this.email);

  /*
    Returns all the users from json
   */
  static Future<List<User>> fromJson(dynamic response) {
    print(response['attendees'][50]['profile']);
    return null;
  }


}